package consulrima

import java.text.SimpleDateFormat
import org.springframework.dao.DataIntegrityViolationException
import org.compass.core.engine.SearchEngineQueryParseException
import java.awt.image.BufferedImage
import java.io.ByteArrayOutputStream
import java.net.URL
import javax.imageio.ImageIO
import org.springframework.security.access.annotation.Secured

@Secured(['ROLE_ADMINISTRADOR','ROLE_ANALISTA','ROLE_SUPERUSER'])
class EmployeeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    static SimpleDateFormat sdf = new SimpleDateFormat( 'dd-MM-yyyy' ) //H:m:s
    static SimpleDateFormat sdf2 = new SimpleDateFormat( 'MM-dd-yyyy' ) //H:m:s
    def searchableService
    static String WILDCARD = "*"
    
    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [employeeInstanceList: Employee.list(params), employeeInstanceTotal: Employee.count()]
    }

    def create() {
        [employeeInstance: new Employee(params)]
    }

    def save() {
        println "los parametros son: "+params
        println "la cantidad de parametros son "+params.size()
        params.salary=Float.parseFloat(params.salary)
        def params2=params.clone()
        def numero = params.size()
        def x=0;
        while (numero >19){
            params.remove('phone['+x+']')
            params.remove('areaCode['+x+']')
            numero= numero-2
            x=x+1
        }
        try{
            params.bornDate = sdf.parse(params.bornDate)
            params.admissionDate = sdf2.parse(params.admissionDate)
        }
        catch (Exception ex){
            params.bornDate = sdf.parse("12-12-2012")
            params.admissionDate = sdf2.parse("12-12-2012")
        }
        def employeeInstance = new Employee(params)
        if (!employeeInstance.save(flush: true)) {
            render(view: "create", model: [employeeInstance: employeeInstance])
            return
        }
        println "los parametros 2 son: "+params2
        println "la cantidad de parametros 2 son "+params2.size()
        println "Empleado es "+employeeInstance.id
        numero = params2.size();
        x=0;
        while (numero >19){
                println "el phone del x: "+x+" es: "+params2.getAt('phone['+x+']');
                println "el phone del x: "+x+" es: "+params2.getAt('areaCode['+x+']');
          //  Phone.createPhone(params2.getAt('areaCode['+x+']'),params2.getAt('phone['+x+']'),employeeInstance.id)
            employeeInstance.addToPhone([areaCode:params2.getAt('areaCode['+x+']'),phoneNumber:params2.getAt('phone['+x+']')]);
            numero= numero-2;
            x=x+1
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.id])
        redirect(action: "show", id: employeeInstance.id)
    }

    def show(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        [employeeInstance: employeeInstance]
    }
    def edit(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        [employeeInstance: employeeInstance]
    }
    def update(Long id, Long version) {
        params.bornDate = sdf.parse(params.bornDate)
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (employeeInstance.version > version) {
                employeeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                    [message(code: 'employee.label', default: 'Employee')] as Object[],
                          "Another user has updated this Employee while you were editing")
                render(view: "edit", model: [employeeInstance: employeeInstance])
                return
            }
        }

        employeeInstance.properties = params

        if (!employeeInstance.save(flush: true)) {
            render(view: "edit", model: [employeeInstance: employeeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.id])
        redirect(action: "show", id: employeeInstance.id)
    }
    
     def updatePhoto(Long id, Long version) {
        
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (employeeInstance.version > version) {
                employeeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                    [message(code: 'employee.label', default: 'Employee')] as Object[],
                          "Another user has updated this Employee while you were editing")
                render(view: "edit", model: [employeeInstance: employeeInstance])
                return
            }
        }

        employeeInstance.properties = params

        if (!employeeInstance.save(flush: true)) {
            render(view: "edit", model: [employeeInstance: employeeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.id])
        redirect(action: "show", id: employeeInstance.id)
    }

    @Secured(['ROLE_ADMINISTRADOR','ROLE_SUPERUSER'])
    def delete(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        try {
            employeeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "show", id: id)
        }
    }

    def editAllocation(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        [employeeInstance: employeeInstance]
    }

    def updateAllocation(Long id, Long version) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (employeeInstance.version > version) {
                employeeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                    [message(code: 'employee.label', default: 'Employee')] as Object[],
                          "Another user has updated this Employee while you were editing")
                render(view: "edit", model: [employeeInstance: employeeInstance])
                return
            }
        }

        employeeInstance.properties = params

        if (!employeeInstance.save(flush: true)) {
            render(view: "edit", model: [employeeInstance: employeeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.id])
        redirect(action: "show", id: employeeInstance.id)
    }
    
    def editAntiquity(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        [employeeInstance: employeeInstance]
    }
    
       def editPhoto(Long id) {
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        [employeeInstance: employeeInstance]
    }
    def updateAntiquity(Long id, Long version) {
        println params
        params.salary=Float.parseFloat(params.salary)
        try{
            params.admissionDate = sdf2.parse(params.admissionDate)
            params.dischargeDate = sdf2.parse(params.dischargeDate)
        }
        catch (Exception ex){
            params.dischargeDate = null
            params.admissionDate = sdf2.parse("12-12-2012")
        }
       
        def employeeInstance = Employee.get(id)
        if (!employeeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'employee.label', default: 'Employee'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (employeeInstance.version > version) {
                employeeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                    [message(code: 'employee.label', default: 'Employee')] as Object[],
                          "Another user has updated this Employee while you were editing")
                render(view: "edit", model: [employeeInstance: employeeInstance])
                return
            }
        }

        employeeInstance.properties = params

        if (!employeeInstance.save(flush: true)) {
            render(view: "edit", model: [employeeInstance: employeeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'employee.label', default: 'Employee'), employeeInstance.id])
        redirect(action: "show", id: employeeInstance.id)
    }
    def showImage = {
        /* Path path = Paths.get("web-app\\images\\icon-user-default.png")
        byte[] data = Files.readAllBytes(path)
         */
        def employee = Employee.get( params.id )
        if (employee!=null){
            if (employee.photo ) //tiene foto
            response.outputStream << employee.photo
            else // no tiene foto
            {
                URL url = new URL((g.resource(dir: 'images', file: 'icon-user-default.png',absolute:true)).toString());

                BufferedImage image = ImageIO.read(url);

                // write image to outputstream
                ByteArrayOutputStream baos = new ByteArrayOutputStream();
                ImageIO.write(image, "png", baos);
                baos.flush();

                // get bytes
                byte[] imageBytes = baos.toByteArray();
        
                response.outputStream << imageBytes
            }
            response.outputStream.flush()
        }
    }
    
    def search = {
        if (!params.q?.trim()) {
            return [:]
        }
        try {
            String searchTerm = WILDCARD+ params.q + WILDCARD
            //   println (Producto.search("*Apple*"))
            return [searchResult: searchableService.search(searchTerm, params)] //searchTerm, params
        } catch (SearchEngineQueryParseException ex) {
            return [parseException: true]
        }
    }
    def indexAll = {
        Thread.start {
            searchableService.index()
        }
        render("bulk index started in a background thread")
    }
}
