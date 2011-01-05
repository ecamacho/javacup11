
<%@ page import="org.javahispano.javacup.SecUser" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />

        <title>javaCup 2011</title>
    </head>
    <body>
        <br /><br />
    <div id="infobox">
      <div class="titlebox">
        <h2>Bienvenido <sec:username /></h2>
      </div>

      <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
      </g:if>

      <g:if test="${hasTactic}">
      <div>
        <div class="message">
          Gracias por participar. Te notificaremos por mail cuando tu t&aacute;ctica sea aceptada.
        </div>
      </div>
      </g:if>
      <g:elseif test="${!hasTactic}">
        <div>
        <p>
          Sube el c&oacute;digo fuente de tu t&aacute;ctica. Solo se aceptan archivos
          .zip
        </p>
        <p>
          Revisaremos tu t&aacute;ctica y te notificaremos por correo si fue aceptada en el torneo
          o rechazada. Si es rechazada, tendr&aacute;s una oportunidad m&aacute;s para enviarla.
        </p>
        <p>
          Recuerda que el torneo empieza el 5 de febrero.
        </p>
        <p>
          <g:form controller="team" method="post" action="save" enctype="multipart/form-data">
            <input type="file" name="tactic"/>
            <input type="submit"/>
          </g:form>

        </p>
      </div>
      </g:elseif>
    </body>
</html>
