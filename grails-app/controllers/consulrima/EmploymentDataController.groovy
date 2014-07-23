package consulrima

import org.springframework.dao.DataIntegrityViolationException

class EmploymentDataController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [employmentDataInstanceList: EmploymentData.list(params), employmentDataInstanceTotal: EmploymentData.count()]
    }

    def create() {
        [employmentDataInstance: new EmploymentData(params)]
    }

    def save() {
        def employmentDataInstance = new EmploymentData(params)
        if (!employmentDataInstance.save(flush: true)) {
            render(view: "create", model: [employmentDataInstance: employmentDataInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'employmentData.label', default: 'EmploymentData'), employmentDataInstance.id])
        redirect(action: "show", id: employmentDataInstance.id)
    }

    def show(Long id) {
        def employmentDataInstance = EmploymentData.get(id)
        if (!employmentDataInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employmentData.label', default: 'EmploymentData'), id])
            redirect(action: "list")
            return
        }

        [employmentDataInstance: employmentDataInstance]
    }

    def edit(Long id) {
        def employmentDataInstance = EmploymentData.get(id)
        if (!employmentDataInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employmentData.label', default: 'EmploymentData'), id])
            redirect(action: "list")
            return
        }

        [employmentDataInstance: employmentDataInstance]
    }

    def update(Long id, Long version) {
        def employmentDataInstance = EmploymentData.get(id)
        if (!employmentDataInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employmentData.label', default: 'EmploymentData'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (employmentDataInstance.version > version) {
                employmentDataInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'employmentData.label', default: 'EmploymentData')] as Object[],
                          "Another user has updated this EmploymentData while you were editing")
                render(view: "edit", model: [employmentDataInstance: employmentDataInstance])
                return
            }
        }

        employmentDataInstance.properties = params

        if (!employmentDataInstance.save(flush: true)) {
            render(view: "edit", model: [employmentDataInstance: employmentDataInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'employmentData.label', default: 'EmploymentData'), employmentDataInstance.id])
        redirect(action: "show", id: employmentDataInstance.id)
    }

    def delete(Long id) {
        def employmentDataInstance = EmploymentData.get(id)
        if (!employmentDataInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employmentData.label', default: 'EmploymentData'), id])
            redirect(action: "list")
            return
        }

        try {
            employmentDataInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'employmentData.label', default: 'EmploymentData'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'employmentData.label', default: 'EmploymentData'), id])
            redirect(action: "show", id: id)
        }
    }
}
