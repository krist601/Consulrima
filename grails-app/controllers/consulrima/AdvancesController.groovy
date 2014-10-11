package consulrima

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.security.access.annotation.Secured
import java.awt.image.BufferedImage
import java.io.ByteArrayOutputStream
import java.net.URL
import javax.imageio.ImageIO
import java.text.SimpleDateFormat

@Secured(['ROLE_ADMINISTRADOR','ROLE_ANALISTA','ROLE_SUPERUSER'])
class AdvancesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    static SimpleDateFormat sdf = new SimpleDateFormat( 'MM-dd-yyyy' ) //H:m:s

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 1000000, 10000000)
        [advancesInstanceList: Advances.list(params), advancesInstanceTotal: Advances.count()]
    }

    def create() {
        params.employee=Employee.get(params.foo)
        [advancesInstance: new Advances(params)]
    }

    def save() {
        println params
        params.amount=Float.parseFloat(params.amount)
        try{
            params.date = sdf.parse(params.date)
        }
        catch (Exception ex){
            params.date = sdf.parse("12-12-2012")
        }
        def advancesInstance = new Advances(params)
        if (!advancesInstance.save(flush: true)) {
            render(view: "create", model: [advancesInstance: advancesInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'advances.label', default: 'Advances'), advancesInstance.id])
        redirect(controller: "employee", action: "show", id: advancesInstance.employee.id)
    }

    def show(Long id) {
        def advancesInstance = Advances.get(id)
        if (!advancesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advances.label', default: 'Advances'), id])
            redirect(action: "list")
            return
        }

        [advancesInstance: advancesInstance]
    }

    @Secured(['ROLE_ADMINISTRADOR','ROLE_SUPERUSER'])
    def edit(Long id) {
        def advancesInstance = Advances.get(id)
        if (!advancesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advances.label', default: 'Advances'), id])
            redirect(action: "list")
            return
        }

        [advancesInstance: advancesInstance]
    }

    @Secured(['ROLE_ADMINISTRADOR','ROLE_SUPERUSER'])
    def update(Long id, Long version) {
        println params
        try{
            params.date = sdf.parse(params.date)
        }
        catch (Exception ex){
            params.date = sdf.parse("12-12-2012")
        }
        def advancesInstance = Advances.get(id)
        if (!advancesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advances.label', default: 'Advances'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (advancesInstance.version > version) {
                advancesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'advances.label', default: 'Advances')] as Object[],
                          "Another user has updated this Advances while you were editing")
                render(view: "edit", model: [advancesInstance: advancesInstance])
                return
            }
        }

        advancesInstance.properties = params

        if (!advancesInstance.save(flush: true)) {
            render(view: "edit", model: [advancesInstance: advancesInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'advances.label', default: 'Advances'), advancesInstance.id])
        redirect(controller: "employee", action: "show", id: advancesInstance.employee.id)
    }

    @Secured(['ROLE_ADMINISTRADOR','ROLE_SUPERUSER'])
    def delete(Long id) {
        def advancesInstance = Advances.get(id)
        if (!advancesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'advances.label', default: 'Advances'), id])
            redirect(action: "list")
            return
        }

        try {
            advancesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'advances.label', default: 'Advances'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'advances.label', default: 'Advances'), id])
            redirect(controller: "employee", action: "show", id: advancesInstance.employee.id)
        }
    }
}
