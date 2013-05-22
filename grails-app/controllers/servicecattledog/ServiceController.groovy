package servicecattledog

import org.springframework.dao.DataIntegrityViolationException

class ServiceController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index() {
		redirect(action: "list", params: params)
	}

	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		[serviceCatalogueEntryInstanceList: Service.list(params), serviceCatalogueEntryInstanceTotal: Service.count()]
	}

	def create() {
		[serviceCatalogueEntryInstance: new Service(params)]
	}

	def save() {
		def serviceCatalogueEntryInstance = new Service(params)
		if (!serviceCatalogueEntryInstance.save(flush: true)) {
			render(view: "create", model: [serviceCatalogueEntryInstance: serviceCatalogueEntryInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [
			message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'),
			serviceCatalogueEntryInstance.id
		])
		redirect(action: "show", id: serviceCatalogueEntryInstance.id)
	}

	def show(Long id) {
		def serviceCatalogueEntryInstance = Service.get(id)
		if (!serviceCatalogueEntryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'),
				id
			])
			redirect(action: "list")
			return
		}

		[serviceCatalogueEntryInstance: serviceCatalogueEntryInstance]
	}

	def edit(Long id) {
		def serviceCatalogueEntryInstance = Service.get(id)
		if (!serviceCatalogueEntryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'),
				id
			])
			redirect(action: "list")
			return
		}

		[serviceCatalogueEntryInstance: serviceCatalogueEntryInstance]
	}

	def update(Long id, Long version) {
		def serviceCatalogueEntryInstance = Service.get(id)
		if (!serviceCatalogueEntryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'),
				id
			])
			redirect(action: "list")
			return
		}

		if (version != null) {
			if (serviceCatalogueEntryInstance.version > version) {
				serviceCatalogueEntryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						[
							message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry')] as Object[],
						"Another user has updated this ServiceCatalogueEntry while you were editing")
				render(view: "edit", model: [serviceCatalogueEntryInstance: serviceCatalogueEntryInstance])
				return
			}
		}

		serviceCatalogueEntryInstance.properties = params

		if (!serviceCatalogueEntryInstance.save(flush: true)) {
			render(view: "edit", model: [serviceCatalogueEntryInstance: serviceCatalogueEntryInstance])
			return
		}

		flash.message = message(code: 'default.updated.message', args: [
			message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'),
			serviceCatalogueEntryInstance.id
		])
		redirect(action: "show", id: serviceCatalogueEntryInstance.id)
	}

	def delete(Long id) {
		def serviceCatalogueEntryInstance = Service.get(id)
		if (!serviceCatalogueEntryInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'),
				id
			])
			redirect(action: "list")
			return
		}

		try {
			serviceCatalogueEntryInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [
				message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'),
				id
			])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [
				message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'),
				id
			])
			redirect(action: "show", id: id)
		}
	}

	def searchableService //inject the service (make sure the name is correct)

	def search = {
		def query = params.q
		if(query){
			def srchResults = searchableService.search(query)
			render(view: "phonebook",
			model: [contactInstanceList: srchResults.results,
				contactInstanceTotal:srchResults.total])
		}else{
			redirect(action: "index")
		}
	}
}
