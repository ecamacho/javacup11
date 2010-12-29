
<%@ page import="org.javahispano.javacup.SecUser" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'secUser.label', default: 'SecUser')}" />
        <title>javaCup 2011</title>
    </head>
    <body>
        <br /><br />
    <div id="infobox">
      <div class="titlebox">
        <h2>Registro</h2>

      </div>
        <p>
          <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
          </g:if>
          <g:hasErrors bean="${secUserInstance}">
            <div class="errors">
                <g:renderErrors bean="${secUserInstance}" as="list" />
            </div>
          </g:hasErrors>
          <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="username"><g:message code="secUser.username.label" default="Username" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'username', 'errors')}">
                                    <g:textField name="username" value="${secUserInstance?.username}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password"><g:message code="secUser.password.label" default="Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'password', 'errors')}">
                                    <g:passwordField name="password" value="${secUserInstance?.password}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="secUser.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${secUserInstance?.email}" />
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="team"><g:message code="secUser.team.label" default="Nombre de Equipo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'team', 'errors')}">
                                    <g:textField name="team" value="${secUserInstance?.team}" />
                                </td>
                            </tr>


                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="country.id"><g:message code="secUser.country.label" default="Pa&iacute;s" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'country', 'errors')}">
                                    <g:select name="country.id" from="${org.javahispano.javacup.Country.list()}" optionKey="id"
                                            value="${secUserInstance?.country?.id}"  optionValue="name" />
                                </td>
                            </tr>




                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Registrarse')}" /></span>
                </div>
            </g:form>
        </p>
      </div>






        </div>
    </body>
</html>
