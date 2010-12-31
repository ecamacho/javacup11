<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="javaCup 2011" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link  href="//fonts.googleapis.com/css?family=Lobster:regular" rel="stylesheet" type="text/css" >
        <link href='http://fonts.googleapis.com/css?family=Cuprum' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Droid+Serif' rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />

        <!--[if IE]><script src="js/html5.js"></script><![endif]-->
        <!--[if lt IE 8]><link rel="stylesheet" type="text/css" href="css/ie7.css"><![endif]-->

        <g:layoutHead />
        <g:javascript library="application" />
        <g:javascript library="jquery" plugin="jquery"/>
    </head>
    <body>
       	<div id="header">
		  <span class="title">javaCup 2011</span>
		  <ul id="menu">
            <li>
              <a href="/">home</a>
			</li>
			<li>
              <sec:ifNotLoggedIn>
               <g:link controller="team" action="index">login</g:link></li>
              </sec:ifNotLoggedIn>
              <sec:ifLoggedIn>
               <g:link controller="logout">logout</g:link></li>
              </sec:ifLoggedIn>

			<li>
            <sec:ifLoggedIn>
              <li>
                <g:link controller="team" action="index">mi equipo</g:link></li>
			  <li>
            </sec:ifLoggedIn>
            <li>
              <g:link controller="download" action="show">descargar</g:link></li>
			<li>
              <g:link controller="secUser" action="create">reg&iacute;strate</g:link>
            </li>
			<li>
			  <g:link controller="rule" action="show">bases</g:link>
            </li>
			<li><a href="http://www.javahispano.org/forum/javacup/es/">foro</a></li>
		  </ul>
	    </div>
        <g:layoutBody />
        <div class="wrap">
		<div class="col">
			<h3><span class="red"></span></h3>
			<p>

            </p>
		</div>
		<div class="col">
			<h3><span class="red">Patocinadores</span></h3>
			<p>
              <a href="http://extrema-sistemas.com/">
                <img src="${resource(dir:'images',file:'logo_Extrema.png')}"/>
              </a>
            </p>
		</div>
		<div class="col last">
			<h3> <span class="red">Patrocinadores</span></h3>
			<p>
              <a href="http://www.escueladegroovy.com/">
                <img src="${resource(dir:'images',file:'logoEscuelaGroovy.jpg')}"/>
              </a>
            </p>

		</div>
	</div>
        <div id="footer">
		  <p class="right">Design: Luka Cvrk, <a title="Awsome Web Templates" href="http://www.solucija.com/">Solucija</a></p>
		  <p>&copy; javaHispano 2011 </p>
	</div>
    </body>
</html>