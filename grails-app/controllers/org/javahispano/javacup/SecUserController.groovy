package org.javahispano.javacup

import grails.util.GrailsUtil
import org.codehaus.groovy.grails.commons.GrailsApplication

class SecUserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def springSecurityService

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [secUserInstanceList: SecUser.list(params), secUserInstanceTotal: SecUser.count()]
    }

    def create = {
        def secUserInstance = new SecUser()
        secUserInstance.properties = params
        return [secUserInstance: secUserInstance]
    }

    def completed = {}

    def save = {


        def secUserInstance = new SecUser(params)
        if(secUserInstance.doesTeamExists( secUserInstance.team ) ) {
            flash.message = "Ya existe un equipo con el nombre $secUserInstance.team"
            render(view: "create", model: [secUserInstance: secUserInstance])

        }
        else {
         secUserInstance.enabled = true
         secUserInstance.accountExpired = false
         secUserInstance.accountLocked = false
         secUserInstance.password = springSecurityService.encodePassword( secUserInstance.password )
         if (secUserInstance.save(flush: true)) {
            def userRole = SecRole.findByAuthority('ROLE_USER')
            SecUserSecRole.create secUserInstance, userRole
            sendConfirmationMail(secUserInstance.email)
            redirect(action: "completed")
         }
         else {
            render(view: "create", model: [secUserInstance: secUserInstance])
         }
        }


    }

    def sendConfirmationMail = { email ->
      if ( GrailsUtil.getEnvironment().equals(GrailsApplication.ENV_PRODUCTION) ) {
             sendMail {

                to email
                subject "[javaCup 2011] Registro en la javaCup 2011"
                html """Gracias por registrarte en la javaCup 2011<br/>
                        Recuerda que tienes hasta el <strong>5 de febrero</strong>
                        para subir tu t&aacute;ctica haciendo
                        <a href='http://javacup.javahispano.org/team/index'>login</a> en el sitio.<br/>
                        <br/>Mucha suerte. <br/>
                        El equipo de javaHispano"""


            }
          }

    }
    def show = {
        def secUserInstance = SecUser.get(params.id)
        if (!secUserInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'secUser.label', default: 'SecUser'), params.id])}"
            redirect(action: "list")
        }
        else {
            [secUserInstance: secUserInstance]
        }
    }

    def edit = {
        def secUserInstance = SecUser.get(params.id)
        if (!secUserInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'secUser.label', default: 'SecUser'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [secUserInstance: secUserInstance]
        }
    }

    def update = {
        def secUserInstance = SecUser.get(params.id)
        if (secUserInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (secUserInstance.version > version) {
                    
                    secUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'secUser.label', default: 'SecUser')] as Object[], "Another user has updated this SecUser while you were editing")
                    render(view: "edit", model: [secUserInstance: secUserInstance])
                    return
                }
            }
            secUserInstance.properties = params
            if (!secUserInstance.hasErrors() && secUserInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'secUser.label', default: 'SecUser'), secUserInstance.id])}"
                redirect(action: "show", id: secUserInstance.id)
            }
            else {
                render(view: "edit", model: [secUserInstance: secUserInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'secUser.label', default: 'SecUser'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def secUserInstance = SecUser.get(params.id)
        if (secUserInstance) {
            try {
                secUserInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'secUser.label', default: 'SecUser'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'secUser.label', default: 'SecUser'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'secUser.label', default: 'SecUser'), params.id])}"
            redirect(action: "list")
        }
    }
}
