package consulrima

import org.springframework.dao.DataIntegrityViolationException

class OccupationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [occupationInstanceList: Occupation.list(params), occupationInstanceTotal: Occupation.count()]
    }

    def create() {
        [occupationInstance: new Occupation(params)]
    }

    def save() {
        def occupationInstance = new Occupation(params)
        if (!occupationInstance.save(flush: true)) {
            render(view: "create", model: [occupationInstance: occupationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'occupation.label', default: 'Occupation'), occupationInstance.id])
        redirect(action: "show", id: occupationInstance.id)
    }

    def show(Long id) {
        def occupationInstance = Occupation.get(id)
        if (!occupationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'occupation.label', default: 'Occupation'), id])
            redirect(action: "list")
            return
        }

        [occupationInstance: occupationInstance]
    }

    def edit(Long id) {
        def occupationInstance = Occupation.get(id)
        if (!occupationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'occupation.label', default: 'Occupation'), id])
            redirect(action: "list")
            return
        }

        [occupationInstance: occupationInstance]
    }

    def update(Long id, Long version) {
        def occupationInstance = Occupation.get(id)
        if (!occupationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'occupation.label', default: 'Occupation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (occupationInstance.version > version) {
                occupationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'occupation.label', default: 'Occupation')] as Object[],
                          "Another user has updated this Occupation while you were editing")
                render(view: "edit", model: [occupationInstance: occupationInstance])
                return
            }
        }

        occupationInstance.properties = params

        if (!occupationInstance.save(flush: true)) {
            render(view: "edit", model: [occupationInstance: occupationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'occupation.label', default: 'Occupation'), occupationInstance.id])
        redirect(action: "show", id: occupationInstance.id)
    }

    def delete(Long id) {
        def occupationInstance = Occupation.get(id)
        if (!occupationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'occupation.label', default: 'Occupation'), id])
            redirect(action: "list")
            return
        }

        try {
            occupationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'occupation.label', default: 'Occupation'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'occupation.label', default: 'Occupation'), id])
            redirect(action: "show", id: id)
        }
    }
}
