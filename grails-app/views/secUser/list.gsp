
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
        <h2>Usuarios</h2>
      </div>


        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">

            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'secUser.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="username" title="${message(code: 'secUser.username.label', default: 'Username')}" />

                            <g:sortableColumn property="firstName" title="${message(code: 'secUser.firstName.label', default: 'Nombre')}" />

                            <g:sortableColumn property="lastName" title="${message(code: 'secUser.lastName.label', default: 'Apellidos')}" />

                            <g:sortableColumn property="email" title="${message(code: 'secUser.email.label', default: 'Email')}" />

                            <g:sortableColumn property="team" title="${message(code: 'secUser.team.label', default: 'Equipo')}" />

                            <g:sortableColumn property="status" title="${message(code: 'secUser.status.label', default: 'Status')}" />

                            <th><g:message code="secUser.country.label" default="Country" /></th>
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${secUserInstanceList}" status="i" var="secUserInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="edit" id="${secUserInstance.id}">${fieldValue(bean: secUserInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: secUserInstance, field: "username")}</td>
                        
                            <td>${fieldValue(bean: secUserInstance, field: "firstName")}</td>

                            <td>${fieldValue(bean: secUserInstance, field: "lastName")}</td>

                            <td>${fieldValue(bean: secUserInstance, field: "email")}</td>

                            <td>${fieldValue(bean: secUserInstance, field: "team")}</td>

                            <td>${fieldValue(bean: secUserInstance, field: "status.value")}</td>

                        
                            <td>${fieldValue(bean: secUserInstance, field: "country.name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${secUserInstanceTotal}" />
            </div>
        </div>
       </div>
      </div>
    </body>
</html>
