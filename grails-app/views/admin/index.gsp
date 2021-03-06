<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="Ladmin"/>
		<title>Welcome to Grails</title>
	</head>
	<body>
		<section class="tzblog-wrap">
	        <div class="container">
	            <h1 class="tz-title-bold-3">Admin Page</h1>
	            <article class="blog-item blog-item-first">
	            	<h2>Avaliable Functions</h2>
					<div><g:remoteLink controller="admin" action="refresh" class="btn" >重置数据库</g:remoteLink></div>
	            </article>
	            <article class="blog-item">
	                <h2>Application Status</h2>
					<ul class="tz-collection">
						<li>App version: <g:meta name="app.version"/></li>
						<li>Grails version: <g:meta name="app.grails.version"/></li>
						<li>Groovy version: ${GroovySystem.getVersion()}</li>
						<li>JVM version: ${System.getProperty('java.version')}</li>
						<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
						<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
						<li>Domains: ${grailsApplication.domainClasses.size()}</li>
						<li>Services: ${grailsApplication.serviceClasses.size()}</li>
						<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
					</ul>
	            </article>
	            <article class="blog-item">
					<h2>Installed Plugins</h2>
					<ul class="tz-collection">
						<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
							<li>${plugin.name} - ${plugin.version}</li>
						</g:each>
					</ul>
	            </article>
	            <article class="blog-item blog-item-first">
					<h2>Available Controllers</h2>
					<ul class="tz-collection">
						<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
							<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
						</g:each>
					</ul>
	            </article>
	        </div><!--end class container-->
	    </section>
	</body>
</html>
