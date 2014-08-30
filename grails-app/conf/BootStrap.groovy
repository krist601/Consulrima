import user.SecAppRole
import user.SecAppUser
import user.SecAppUserSecAppRole

class BootStrap {

  def init = { servletContext ->
    def adminRole = new SecAppRole(authority: 'ROLE_ADMIN').save(flush: true)
    def userRole = new SecAppRole(authority: 'ROLE_USER').save(flush: true)

    def testUser = new SecAppUser(username: 'admin', enabled: true, password: 'admin')
    testUser.save(flush: true)

    SecAppUserSecAppRole.create testUser, adminRole, true

   
  }
  /*
 def init = {  servletContext ->
 } */
  def destroy = {
  }
}