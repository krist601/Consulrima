package consulrima

import org.springframework.dao.DataIntegrityViolationException

class AntiquityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [antiquityInstanceList: Antiquity.list(params), antiquityInstanceTotal: Antiquity.count()]
    }

    def create() {
        [antiquityInstance: new Antiquity(params)]
    }

    def save() {
        def antiquityInstance = new Antiquity(params)
        if (!antiquityInstance.save(flush: true)) {
            render(view: "create", model: [antiquityInstance: antiquityInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'antiquity.label', default: 'Antiquity'), antiquityInstance.id])
        redirect(action: "show", id: antiquityInstance.id)
    }

    def show(Long id) {
        def antiquityInstance = Antiquity.get(id)
        if (!antiquityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'antiquity.label', default: 'Antiquity'), id])
            redirect(action: "list")
            return
        }

        [antiquityInstance: antiquityInstance]
    }

    def edit(Long id) {
        def antiquityInstance = Antiquity.get(id)
        if (!antiquityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'antiquity.label', default: 'Antiquity'), id])
            redirect(action: "list")
            return
        }

        [antiquityInstance: antiquityInstance]
    }

    def update(Long id, Long version) {
        def antiquityInstance = Antiquity.get(id)
        if (!antiquityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'antiquity.label', default: 'Antiquity'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (antiquityInstance.version > version) {
                antiquityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'antiquity.label', default: 'Antiquity')] as Object[],
                          "Another user has updated this Antiquity while you were editing")
                render(view: "edit", model: [antiquityInstance: antiquityInstance])
                return
            }
        }

        antiquityInstance.properties = params

        if (!antiquityInstance.save(flush: true)) {
            render(view: "edit", model: [antiquityInstance: antiquityInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'antiquity.label', default: 'Antiquity'), antiquityInstance.id])
        redirect(action: "show", id: antiquityInstance.id)
    }

    def delete(Long id) {
        def antiquityInstance = Antiquity.get(id)
        if (!antiquityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'antiquity.label', default: 'Antiquity'), id])
            redirect(action: "list")
            return
        }

        try {
            antiquityInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'antiquity.label', default: 'Antiquity'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'antiquity.label', default: 'Antiquity'), id])
            redirect(action: "show", id: id)
        }
    }
}
