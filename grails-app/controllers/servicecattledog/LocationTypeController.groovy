package servicecattledog

import org.springframework.dao.DataIntegrityViolationException

class LocationTypeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [locationTypeInstanceList: LocationType.list(params), locationTypeInstanceTotal: LocationType.count()]
    }

    def create() {
        [locationTypeInstance: new LocationType(params)]
    }

    def save() {
        def locationTypeInstance = new LocationType(params)
        if (!locationTypeInstance.save(flush: true)) {
            render(view: "create", model: [locationTypeInstance: locationTypeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'locationType.label', default: 'LocationType'), locationTypeInstance.id])
        redirect(action: "show", id: locationTypeInstance.id)
    }

    def show(Long id) {
        def locationTypeInstance = LocationType.get(id)
        if (!locationTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'locationType.label', default: 'LocationType'), id])
            redirect(action: "list")
            return
        }

        [locationTypeInstance: locationTypeInstance]
    }

    def edit(Long id) {
        def locationTypeInstance = LocationType.get(id)
        if (!locationTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'locationType.label', default: 'LocationType'), id])
            redirect(action: "list")
            return
        }

        [locationTypeInstance: locationTypeInstance]
    }

    def update(Long id, Long version) {
        def locationTypeInstance = LocationType.get(id)
        if (!locationTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'locationType.label', default: 'LocationType'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (locationTypeInstance.version > version) {
                locationTypeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'locationType.label', default: 'LocationType')] as Object[],
                          "Another user has updated this LocationType while you were editing")
                render(view: "edit", model: [locationTypeInstance: locationTypeInstance])
                return
            }
        }

        locationTypeInstance.properties = params

        if (!locationTypeInstance.save(flush: true)) {
            render(view: "edit", model: [locationTypeInstance: locationTypeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'locationType.label', default: 'LocationType'), locationTypeInstance.id])
        redirect(action: "show", id: locationTypeInstance.id)
    }

    def delete(Long id) {
        def locationTypeInstance = LocationType.get(id)
        if (!locationTypeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'locationType.label', default: 'LocationType'), id])
            redirect(action: "list")
            return
        }

        try {
            locationTypeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'locationType.label', default: 'LocationType'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'locationType.label', default: 'LocationType'), id])
            redirect(action: "show", id: id)
        }
    }
}
