package javacup11

import org.javahispano.javacup.SecUser
import grails.util.GrailsUtil
import org.codehaus.groovy.grails.commons.GrailsApplication
import java.util.zip.ZipFile

class TeamController {

    def springSecurityService

    def index = {
       def user = SecUser.get(springSecurityService.principal.id)
       [hasTactic:user.tactic != null]
    }

    def save = {
      def tactic = request.getFile('tactic')
      def model
      if( tactic.isEmpty() ){
          flash.message = 'Por favor, selecciona el archivo con tu t‡ctica.'
          model = [hasTactic:false]
      } else {
        def user = SecUser.get(springSecurityService.principal.id)
        //def okcontents = [ 'application/zip']
        def bytes = isFileValid(tactic, tactic.originalFilename)
        if ( bytes ) {
          user.tactic = bytes
          user.uploadDate = new Date()
          user.status = Status.UPLOADED
          user.ipUpload = request.remoteAddr
          user.save()
          model = [hasTactic:true]
          if ( GrailsUtil.getEnvironment().equals(GrailsApplication.ENV_PRODUCTION) ) {
             sendMail {
                multipart true
                to "ecamacho@javahispano.org","fabnun@gmail.com"
                subject "[javaCup 2011] Nueva tactica de ${user.username}"
                body "${user.username} ha subido la tactica del equipo ${user.team}"
                attachBytes "${user.team}.zip", "application/zip", tactic.bytes
            }
          }

        } else {
          flash.message = 'Solo puedes subir archivos .zip'
          model = [hasTactic:false]
        }
        render(view: "index", model: model)
      }

    }

    def isFileValid = { file, fileName ->
      def valid = true
      def tempFile = File.createTempFile( fileName, '.zip' )
      file.transferTo( tempFile )
      try {
        def zipFile  = new ZipFile(tempFile)
        def bytes = tempFile.bytes
        tempFile.delete()
        bytes
      } catch (Exception e) {
        null
      }

    }
}
