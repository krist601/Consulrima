package user

class SecAppUser {

	transient springSecurityService

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired
        byte [] photo
        String name
        String email 
  
	static constraints = {
		username blank: false, unique: true
		password blank: false
                photo blank: true, nullable: true
                name blank: true, nullable: true
                email blank: true, nullable: true        
	}

	static mapping = {
		password column: '`password`'
	}

	Set<SecAppRole> getAuthorities() {
		SecAppUserSecAppRole.findAllBySecAppUser(this).collect { it.secAppRole } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
