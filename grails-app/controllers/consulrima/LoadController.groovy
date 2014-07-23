package consulrima

import org.springframework.dao.DataIntegrityViolationException

class LoadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [loadInstanceList: Load.list(params), loadInstanceTotal: Load.count()]
    }

    def create() {
        [loadInstance: new Load(params)]
    }

    def save() {
        def loadInstance = new Load(params)
        if (!loadInstance.save(flush: true)) {
            render(view: "create", model: [loadInstance: loadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'load.label', default: 'Load'), loadInstance.id])
        redirect(action: "show", id: loadInstance.id)
    }

    def show(Long id) {
        def loadInstance = Load.get(id)
        if (!loadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'load.label', default: 'Load'), id])
            redirect(action: "list")
            return
        }

        [loadInstance: loadInstance]
    }

    def edit(Long id) {
        def loadInstance = Load.get(id)
        if (!loadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'load.label', default: 'Load'), id])
            redirect(action: "list")
            return
        }

        [loadInstance: loadInstance]
    }

    def update(Long id, Long version) {
        def loadInstance = Load.get(id)
        if (!loadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'load.label', default: 'Load'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (loadInstance.version > version) {
                loadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'load.label', default: 'Load')] as Object[],
                          "Another user has updated this Load while you were editing")
                render(view: "edit", model: [loadInstance: loadInstance])
                return
            }
        }

        loadInstance.properties = params

        if (!loadInstance.save(flush: true)) {
            render(view: "edit", model: [loadInstance: loadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'load.label', default: 'Load'), loadInstance.id])
        redirect(action: "show", id: loadInstance.id)
    }

    def delete(Long id) {
        def loadInstance = Load.get(id)
        if (!loadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'load.label', default: 'Load'), id])
            redirect(action: "list")
            return
        }

        try {
            loadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'load.label', default: 'Load'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'load.label', default: 'Load'), id])
            redirect(action: "show", id: id)
        }
    }
}
