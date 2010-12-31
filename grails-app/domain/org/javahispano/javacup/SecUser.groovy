package org.javahispano.javacup

class SecUser {

	String username
	String password
    String email
    String team
    String firstName
    String lastName
	boolean enabled
	boolean accountExpired
    boolean teamRejected
	boolean accountLocked
	boolean passwordExpired

    static belongsTo = [country:Country]
	static constraints = {
		username blank: false, unique: true, minSize: 3, maxSize: 15
		password blank: false
        email blank:false, unique:true, email: true
        team blank:false, unique:true, minSize: 3
        firstName blank:false, minSize:5
	}

	static mapping = {
		password column: '`password`'
	}

	Set<SecRole> getAuthorities() {
		SecUserSecRole.findAllBySecUser(this).collect { it.secRole } as Set
	}

    Boolean doesTeamExists( String t ) {
      def results = SecUser.findAll('from SecUser where upper(team) = :team',
              [team:t.toUpperCase()])
      results.size() > 0
    }
}
