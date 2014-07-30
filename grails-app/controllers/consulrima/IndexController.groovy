package consulrima
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

class IndexController {
/**
	 * Dependency injection for the springSecurityService.
	 */
	def springSecurityService
    def index() { 
      
       if (springSecurityService.isLoggedIn()) 
		 {
           render (view:"index")
        }
        else
        {
            redirect(controller:"login",action: "auth")
        }
  
       }
       
    def index1() {}
}
