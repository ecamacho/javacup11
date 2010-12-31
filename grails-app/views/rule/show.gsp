<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>javaCup 2011</title>
    <meta name="layout" content="main" />
  </head>

  <body>
  <br /><br />
    <div id="rulesbox">

        <span class='rulesTitle'>&lt;Introducci&oacute;n&gt;</span>
        <p>
          La organizaci&oacute;n sin &aacute;nimo de lucro javaHispano ha organizado la cuarta
          versi&oacute;n del torneo virtual de f&uacute;tbol javaCup donde cada equipo es una
          clase Java que implementa una interfaz predefinida.

          El concurso cuenta con el patrocinio de las empresas <a href="http://extrema-sistemas.com/">Extrema</a>,
          y <a href="http://www.escueladegroovy.com/">Escuela de Groovy</a>
          como patrocinadores platino.

          La participaci&oacute;n est&aacute; abierta a cualquier hispanohablante, sin importar su
          nacionalidad. Desarrollar un equipo de f&uacute;tbol es extremadamente simple ya que el
          software en el cual se basa el concurso se encarga de dibujar en la pantalla y gestionar
          los movimientos de la pelota y de los dos equipos. Para crear un equipo lo &uacute;nico
          que hay que indicar es qu&eacute; movimientos quieres que realice tu equipo en cada situaci&oacute;n,
          lo cual es sencillo gracias a la API que expone a los equipos el software.

          Puedes descargar todo lo que necesitas para comenzar a crear tus equipo y participar, en la
          zona de descargas de esta web.
        </p>
        <span class='rulesTitle'>&lt;Bases&gt;</span>
        <br />
        <ol>
          <li>Cada participante podr&aacute; enviar un &uacute;nico equipo de f&uacute;tbol.</li>

          <li>Una vez haya sido enviado cada equipo se comprobar&aacute; su correcci&oacute;n
          (Compilacion exitosa, implementa la interfaz adecuada, incluye todas las posibles clases
          Java auxiliares en las cuales se apoya, no realiza un consumo excesivo de memoria o CPU,
          etc.). Una vez se haya verificado la correcci&oacute;n del equipo este se convertir&aacute;
            en el equipo de f&uacute;tbol definitivo de dicho concursante.
          Ver anexo de normas de aceptaci&oacute;n.</li>

          <li>El plazo para el env&iacute;o de equipos de f&uacute;tbol es desde el ????? hasta el
          ????? a las 23:59:59 horas de Madrid (UTC +1).
          De haber alg&uacute;n problema se le notificar&aacute;
            al concursante a trav&eacute;;s de un correo electr&oacute;nico.
          &Eacute;ste tendr&aacute; un plazo de 3 d&iacute;as desde el d&iacute;a de env&iacute;o de
          la notificaci&oacute;n para solucionar solo la deficiencia reportada.
          Cada participante s&oacute;lo tendr&aacute; una oportunidad para resolver las
          deficiencias de su equipo.</li>

          <li>El c&oacute;digo fuente de todos los equipos enviados al concurso deber&aacute;
            estar bajo licencia GPL v3. Esto es necesario ya que el framework que permitir&aacute;
            la realizaci&oacute;n de los partidos tienen licencia GPL v3 y, por tanto, todos los
            software que ese enlace con el debe tener la misma licencia.</li>

          <li>Todos los participantes en el concurso deber&aacute;n registrarse a trav&eacute;s de
          la web http://javacup.javahispano.org empleando su nombre y apellidos reales.
          Los premios de la JavaCup se entregar&aacute;n a una persona cuyo nombre coincida con el
          usado en el registro del equipo de f&uacute;tbol.
          Si por cualquier motivo dicha persona no puede ser contactada por la asociaci&oacute;n,
          el equipo correspondiente perder&aacute; su derecho al premio. En ese caso, el premio se
          entregar&aacute; al equipo clasificado en la posici&oacute;n inmediatamente anterior.</li>

          <li>Los equipos recibidos se organizaran en grupos de cuatro o cinco participantes,
          y para que el torneo sea justo, se procurar&aacute; que los grupos sean parejos entre
          s&iacute;. El torneo consistir&aacute; en la ejecuci&oacute;n de una primera ronda donde
          dentro de cada grupo jugaran todos contra todos y clasificaran los dos mejores. Si el total
          de equipos clasificados despu&eacute;s de la primera ronda no fuera potencia de dos se
          clasificara tambi&eacute;n a los mejores terceros hasta completar la potencia de dos.
          Las siguientes fases del torneo ser&aacute;n partidos eliminatorios. A medida se ejecute
          el torneo los partidos podran ser visualizados en http://javacup.javahispano.org, y
          tanto para la final como la definicion del tercer y cuarto lugar se grabar&aacute; un video.
          </li>

          <li>El premio del concurso se abonar&aacute; en una cuenta bancaria que deber&aacute;
            especificar el receptor. javaHispano utilizar&aacute; la direcci&oacute;n de
          correo electr&oacute;nico de registro del equipo correspondiente para ponerse en
          contacto con el ganador. La organizaci&oacute;n javaHispano correr&aacute; con los
          gastos derivados de la transferencia hasta un m&aacute;ximo de 50?; a partir de ah&iacute;
            los costos de la transferencia se descontar&aacute;n del premio a percibir.
          El pago podr&iacute;a realizarse por un cauce diferente del aqu&iacute; recogido siempre
          y cuando haya un mutuo acuerdo por ambas partes.</li>

          <li>La organizaci&oacute;n se reserva el derecho de rechazar cualquier equipo de
          f&uacute;tbol que considere que no cumple las especificaciones. La participaci&oacute;n
          en el concurso implica acatar las decisiones de aceptaci&oacute;n y rechazo de equipos
          de la organizaci&oacute;n.</li>

          <li>Los resultados del torneo son inapelables. La participaci&oacute;n en &eacute;l
          implica acatar dichos resultados.</li>

          <li>El resultado del partido final se anunciar&aacute; en Madrid, durante el
          evento <a href='http://www.springio.net'>Spring I/O</a>  el 18 de febrero de 2011.
        </ol>
        <br/>
        <span class="rulesTitle">&lt;Normas de aceptaci&oacute;n&gt;</span>
        <br /><br />
          <ul>
            <li>a) El codigo debe compilar para el jdk 1.5 o superior.</li>
            <li>b) Incluye clase que implementa la interfaz Tactica.</li>
            <li>c) Si usa librerias externas, debe incluir las fuentes de dichas librerias.</li>
            <li>d) No accede al sistema de archivos, a Internet, u otro similar
                (Si se podr&aacute; acceder recursos URL de archivos ubicados en el paquete de la
                t&aacute;ctica).</li>
            <li>e) No realiza un consumo excesivo de memoria o CPU.</li>
            <li>f) No contiene clases que extienden clases del framework.</li>
            <li>g) Debe ubicar las clases en un paquete diferente a los paquetes del framework.</li>
            <li>h) Las fuentes comprimidas enviadas no deber&aacute;n ocupar mas de 3mb.</li>
            <li>i) Solo se permitir&aacute; copia de c&oacute;digo entre tacticas si se trata de m&eacute;todos aislados.</li>
            <li>j) No se aceptara c&oacute;digo ofuscado, ni carga din&aacute;mica de clases ya compiladas.</li>
            <li>k) Y en general, no explotar agujeros que afecten el normal funcionamiento del framework en
            beneficio de la t&aacute;ctica.</li>
          </ul>

      </div>
      <br/><br/>
  </body>
</html>