import org.javahispano.javacup.SecRole
import org.javahispano.javacup.SecUser
import org.javahispano.javacup.SecUserSecRole
import org.javahispano.javacup.Country

class BootStrap {

    def springSecurityService

    def init = { servletContext ->
      def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)

      def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
      if( !Country.findAll().size() ) {
        new Country(id:1, name:'Argentina').save( failOnError:true )
        new Country(id:2, name:'Bolivia').save( failOnError:true )
        new Country(id:3, name:'Brasil').save( failOnError:true )
        new Country(id:4, name:'Chile').save( failOnError:true )
        new Country(id:5, name:'Colombia').save( failOnError:true )
        new Country(id:6, name:'Costa Rica').save( failOnError:true )
        new Country(id:7, name:'Cuba').save( failOnError:true )
        new Country(id:8, name:'Ecuador').save( failOnError:true )
        new Country(id:9, name:'El Salvador').save( failOnError:true )
        new Country(id:10, name:'Espana').save( failOnError:true )
        new Country(id:11, name:'Guadalupe').save( failOnError:true )
        new Country(id:12, name:'Guatemala').save( failOnError:true )
        new Country(id:13, name:'Guayana Francesa').save( failOnError:true )
        new Country(id:14, name:'Haiti').save( failOnError:true )
        new Country(id:15, name:'Honduras').save( failOnError:true )
        new Country(id:16, name:'Martinica').save( failOnError:true )
        def adminCountry = new Country(id:17, name:'Mexico').save( failOnError:true )
        new Country(id:18, name:'Nicaragua').save( failOnError:true )
        new Country(id:19, name:'Panama').save( failOnError:true )
        new Country(id:20, name:'Paraguay').save( failOnError:true )
        new Country(id:21, name:'Peru').save( failOnError:true )
        new Country(id:22, name:'Portugal').save( failOnError:true )
        new Country(id:23, name:'Puerto Rico').save( failOnError:true )
        new Country(id:24, name:'Republica Dominicana').save( failOnError:true )
        new Country(id:25, name:'Uruguay').save( failOnError:true )
        new Country(id:26, name:'Venezuela').save( failOnError:true )
        new Country(id:27, name:'Otro').save( failOnError:true )

      def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
                username: 'admin',
                password: springSecurityService.encodePassword('javahispano'),
                enabled: true,
                email:'ecamacho@javahispano.org',
                team : 'javahispano',
                firstName: 'admin',
                lastName: 'javahispano'

              , country: adminCountry).save(failOnError: true)
      if (!adminUser.authorities.contains(adminRole)) {
            SecUserSecRole.create adminUser, adminRole
      }
      }



    }
    def destroy = {
    }
}
