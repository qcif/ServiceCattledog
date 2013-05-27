
<%@ page import="servicecattledog.Service" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'service.label', default: 'Service')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-service" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-service" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list service">
			
				<g:if test="${serviceInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="service.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${serviceInstance}" field="title"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${serviceInstance?.categories}">
				<li class="fieldcontain">
					<span id="categories-label" class="property-label"><g:message code="service.categories.label" default="Categories" /></span>
					
						<g:each in="${serviceInstance.categories}" var="c">
						<span class="property-value" aria-labelledby="categories-label"><g:link controller="category" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.fullDescription}">
				<li class="fieldcontain">
					<span id="fullDescription-label" class="property-label"><g:message code="service.fullDescription.label" default="Full Description" /></span>
					
						<span class="property-value" aria-labelledby="fullDescription-label"><g:fieldValue bean="${serviceInstance}" field="fullDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.currentVersion}">
				<li class="fieldcontain">
					<span id="currentVersion-label" class="property-label"><g:message code="service.currentVersion.label" default="Current Version" /></span>
					
						<span class="property-value" aria-labelledby="currentVersion-label"><g:fieldValue bean="${serviceInstance}" field="currentVersion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.licence}">
				<li class="fieldcontain">
					<span id="licence-label" class="property-label"><g:message code="service.licence.label" default="Licence" /></span>
					
						<span class="property-value" aria-labelledby="licence-label"><g:fieldValue bean="${serviceInstance}" field="licence"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.serviceDescription}">
				<li class="fieldcontain">
					<span id="serviceDescription-label" class="property-label"><g:message code="service.serviceDescription.label" default="Service Description" /></span>
					
						<span class="property-value" aria-labelledby="serviceDescription-label"><g:fieldValue bean="${serviceInstance}" field="serviceDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.supportDescription}">
				<li class="fieldcontain">
					<span id="supportDescription-label" class="property-label"><g:message code="service.supportDescription.label" default="Support Description" /></span>
					
						<span class="property-value" aria-labelledby="supportDescription-label"><g:fieldValue bean="${serviceInstance}" field="supportDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.trainingDescription}">
				<li class="fieldcontain">
					<span id="trainingDescription-label" class="property-label"><g:message code="service.trainingDescription.label" default="Training Description" /></span>
					
						<span class="property-value" aria-labelledby="trainingDescription-label"><g:fieldValue bean="${serviceInstance}" field="trainingDescription"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${serviceInstance?.locations}">
				<li class="fieldcontain">
					<span id="locations-label" class="property-label"><g:message code="service.locations.label" default="Locations" /></span>
					
						<g:each in="${serviceInstance.locations}" var="l">
						<span class="property-value" aria-labelledby="locations-label"><a href="${l.url}" target="_blank">${l.type.encodeAsHTML()}</a></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${serviceInstance?.id}" />
					<g:link class="edit" action="edit" id="${serviceInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
