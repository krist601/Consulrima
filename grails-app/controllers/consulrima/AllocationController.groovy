package consulrima

import org.springframework.dao.DataIntegrityViolationException

class AllocationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [allocationInstanceList: Allocation.list(params), allocationInstanceTotal: Allocation.count()]
    }

    def create() {
        params.employee=Employee.get(params.foo)
        [allocationInstance: new Allocation(params)]
    }

    def save() {
        def allocationInstance = new Allocation(params)
        if (!allocationInstance.save(flush: true)) {
            render(view: "create", model: [allocationInstance: allocationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'allocation.label', default: 'Allocation'), allocationInstance.id])
        redirect(controller: "employee", action: "show", id: allocationInstance.employee.id)
    }

    def show(Long id) {
        def allocationInstance = Allocation.get(id)
        if (!allocationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allocation.label', default: 'Allocation'), id])
            redirect(action: "list")
            return
        }

        [allocationInstance: allocationInstance]
    }

    def edit(Long id) {
        def allocationInstance = Allocation.get(id)
        if (!allocationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allocation.label', default: 'Allocation'), id])
            redirect(action: "list")
            return
        }

        [allocationInstance: allocationInstance]
    }

    def update(Long id, Long version) {
        def allocationInstance = Allocation.get(id)
        if (!allocationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allocation.label', default: 'Allocation'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (allocationInstance.version > version) {
                allocationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'allocation.label', default: 'Allocation')] as Object[],
                          "Another user has updated this Allocation while you were editing")
                render(view: "edit", model: [allocationInstance: allocationInstance])
                return
            }
        }

        allocationInstance.properties = params

        if (!allocationInstance.save(flush: true)) {
            render(view: "edit", model: [allocationInstance: allocationInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'allocation.label', default: 'Allocation'), allocationInstance.id])
        redirect(controller: "employee", action: "show", id: allocationInstance.employee.id)
    }

    def delete(Long id) {
        def allocationInstance = Allocation.get(id)
        if (!allocationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'allocation.label', default: 'Allocation'), id])
            redirect(action: "list")
            return
        }

        try {
            allocationInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'allocation.label', default: 'Allocation'), id])
            redirect(controller: "employee", action: "show", id: allocationInstance.employee.id)
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'allocation.label', default: 'Allocation'), id])
            redirect(action: "show", id: id)
        }
    }
}
