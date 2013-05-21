package servicecattledog

import org.springframework.dao.DataIntegrityViolationException

class ServiceCatalogueEntryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [serviceCatalogueEntryInstanceList: ServiceCatalogueEntry.list(params), serviceCatalogueEntryInstanceTotal: ServiceCatalogueEntry.count()]
    }

    def create() {
        [serviceCatalogueEntryInstance: new ServiceCatalogueEntry(params)]
    }

    def save() {
        def serviceCatalogueEntryInstance = new ServiceCatalogueEntry(params)
        if (!serviceCatalogueEntryInstance.save(flush: true)) {
            render(view: "create", model: [serviceCatalogueEntryInstance: serviceCatalogueEntryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'), serviceCatalogueEntryInstance.id])
        redirect(action: "show", id: serviceCatalogueEntryInstance.id)
    }

    def show(Long id) {
        def serviceCatalogueEntryInstance = ServiceCatalogueEntry.get(id)
        if (!serviceCatalogueEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'), id])
            redirect(action: "list")
            return
        }

        [serviceCatalogueEntryInstance: serviceCatalogueEntryInstance]
    }

    def edit(Long id) {
        def serviceCatalogueEntryInstance = ServiceCatalogueEntry.get(id)
        if (!serviceCatalogueEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'), id])
            redirect(action: "list")
            return
        }

        [serviceCatalogueEntryInstance: serviceCatalogueEntryInstance]
    }

    def update(Long id, Long version) {
        def serviceCatalogueEntryInstance = ServiceCatalogueEntry.get(id)
        if (!serviceCatalogueEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (serviceCatalogueEntryInstance.version > version) {
                serviceCatalogueEntryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry')] as Object[],
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

        flash.message = message(code: 'default.updated.message', args: [message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'), serviceCatalogueEntryInstance.id])
        redirect(action: "show", id: serviceCatalogueEntryInstance.id)
    }

    def delete(Long id) {
        def serviceCatalogueEntryInstance = ServiceCatalogueEntry.get(id)
        if (!serviceCatalogueEntryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'), id])
            redirect(action: "list")
            return
        }

        try {
            serviceCatalogueEntryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry'), id])
            redirect(action: "show", id: id)
        }
    }
}
