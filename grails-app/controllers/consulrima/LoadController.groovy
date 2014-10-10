package consulrima

import org.springframework.dao.DataIntegrityViolationException
import java.nio.file.Files
import java.nio.file.Paths
import java.nio.file.Path
import java.awt.image.BufferedImage
import java.io.ByteArrayOutputStream
import java.net.URL
import javax.imageio.ImageIO
import java.text.SimpleDateFormat
import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMINISTRADOR','ROLE_ANALISTA','ROLE_SUPERUSER'])
class LoadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    static SimpleDateFormat sdf = new SimpleDateFormat( 'MM-dd-yyyy' ) //H:m:s

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [loadInstanceList: Load.list(params), loadInstanceTotal: Load.count()]
    }

    def create() {
        params.employee=Employee.get(params.foo)
        [loadInstance: new Load(params)]
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
        def loadInstance = new Load(params)
        if (!loadInstance.save(flush: true)) {
            render(view: "create", model: [loadInstance: loadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'load.label', default: 'Load'), loadInstance.id])
        redirect(controller: "employee", action: "show", id: loadInstance.employee.id)
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

    @Secured(['ROLE_ADMINISTRADOR','ROLE_SUPERUSER'])
    def edit(Long id) {
        def loadInstance = Load.get(id)
        if (!loadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'load.label', default: 'Load'), id])
            redirect(action: "list")
            return
        }

        [loadInstance: loadInstance]
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
        redirect(controller: "employee", action: "show", id: loadInstance.employee.id)
    }

    @Secured(['ROLE_ADMINISTRADOR','ROLE_SUPERUSER'])
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
            redirect(controller: "employee", action: "show", id: loadInstance.employee.id)
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'load.label', default: 'Load'), id])
            redirect(action: "show", id: id)
        }
    }
}
