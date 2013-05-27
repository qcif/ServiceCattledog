
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
			
				<g:if test="${serviceInstance?.brief_description}">
				<li class="fieldcontain">
					<span id="brief_description-label" class="property-label"><g:message code="service.brief_description.label" default="Briefdescription" /></span>
					
						<span class="property-value" aria-labelledby="brief_description-label"><g:fieldValue bean="${serviceInstance}" field="brief_description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.full_description}">
				<li class="fieldcontain">
					<span id="full_description-label" class="property-label"><g:message code="service.full_description.label" default="Fulldescription" /></span>
					
						<span class="property-value" aria-labelledby="full_description-label"><g:fieldValue bean="${serviceInstance}" field="full_description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.current_version}">
				<li class="fieldcontain">
					<span id="current_version-label" class="property-label"><g:message code="service.current_version.label" default="Currentversion" /></span>
					
						<span class="property-value" aria-labelledby="current_version-label"><g:fieldValue bean="${serviceInstance}" field="current_version"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.licence}">
				<li class="fieldcontain">
					<span id="licence-label" class="property-label"><g:message code="service.licence.label" default="Licence" /></span>
					
						<span class="property-value" aria-labelledby="licence-label"><g:fieldValue bean="${serviceInstance}" field="licence"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_codebase}">
				<li class="fieldcontain">
					<span id="location_codebase-label" class="property-label"><g:message code="service.location_codebase.label" default="Locationcodebase" /></span>
					
						<g:each in="${serviceInstance.location_codebase}" var="l">
						<span class="property-value" aria-labelledby="location_codebase-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_developer_guide}">
				<li class="fieldcontain">
					<span id="location_developer_guide-label" class="property-label"><g:message code="service.location_developer_guide.label" default="Locationdeveloperguide" /></span>
					
						<g:each in="${serviceInstance.location_developer_guide}" var="l">
						<span class="property-value" aria-labelledby="location_developer_guide-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_developer_resources}">
				<li class="fieldcontain">
					<span id="location_developer_resources-label" class="property-label"><g:message code="service.location_developer_resources.label" default="Locationdeveloperresources" /></span>
					
						<g:each in="${serviceInstance.location_developer_resources}" var="l">
						<span class="property-value" aria-labelledby="location_developer_resources-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_faq}">
				<li class="fieldcontain">
					<span id="location_faq-label" class="property-label"><g:message code="service.location_faq.label" default="Locationfaq" /></span>
					
						<g:each in="${serviceInstance.location_faq}" var="l">
						<span class="property-value" aria-labelledby="location_faq-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_install_guide}">
				<li class="fieldcontain">
					<span id="location_install_guide-label" class="property-label"><g:message code="service.location_install_guide.label" default="Locationinstallguide" /></span>
					
						<g:each in="${serviceInstance.location_install_guide}" var="l">
						<span class="property-value" aria-labelledby="location_install_guide-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_issues_register}">
				<li class="fieldcontain">
					<span id="location_issues_register-label" class="property-label"><g:message code="service.location_issues_register.label" default="Locationissuesregister" /></span>
					
						<g:each in="${serviceInstance.location_issues_register}" var="l">
						<span class="property-value" aria-labelledby="location_issues_register-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_public_website}">
				<li class="fieldcontain">
					<span id="location_public_website-label" class="property-label"><g:message code="service.location_public_website.label" default="Locationpublicwebsite" /></span>
					
						<g:each in="${serviceInstance.location_public_website}" var="l">
						<span class="property-value" aria-labelledby="location_public_website-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_registration_pack}">
				<li class="fieldcontain">
					<span id="location_registration_pack-label" class="property-label"><g:message code="service.location_registration_pack.label" default="Locationregistrationpack" /></span>
					
						<g:each in="${serviceInstance.location_registration_pack}" var="l">
						<span class="property-value" aria-labelledby="location_registration_pack-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_release_notes}">
				<li class="fieldcontain">
					<span id="location_release_notes-label" class="property-label"><g:message code="service.location_release_notes.label" default="Locationreleasenotes" /></span>
					
						<g:each in="${serviceInstance.location_release_notes}" var="l">
						<span class="property-value" aria-labelledby="location_release_notes-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_security_configuration}">
				<li class="fieldcontain">
					<span id="location_security_configuration-label" class="property-label"><g:message code="service.location_security_configuration.label" default="Locationsecurityconfiguration" /></span>
					
						<g:each in="${serviceInstance.location_security_configuration}" var="l">
						<span class="property-value" aria-labelledby="location_security_configuration-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_service_desk}">
				<li class="fieldcontain">
					<span id="location_service_desk-label" class="property-label"><g:message code="service.location_service_desk.label" default="Locationservicedesk" /></span>
					
						<g:each in="${serviceInstance.location_service_desk}" var="l">
						<span class="property-value" aria-labelledby="location_service_desk-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_sysadmin_guide}">
				<li class="fieldcontain">
					<span id="location_sysadmin_guide-label" class="property-label"><g:message code="service.location_sysadmin_guide.label" default="Locationsysadminguide" /></span>
					
						<g:each in="${serviceInstance.location_sysadmin_guide}" var="l">
						<span class="property-value" aria-labelledby="location_sysadmin_guide-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_system_overview}">
				<li class="fieldcontain">
					<span id="location_system_overview-label" class="property-label"><g:message code="service.location_system_overview.label" default="Locationsystemoverview" /></span>
					
						<g:each in="${serviceInstance.location_system_overview}" var="l">
						<span class="property-value" aria-labelledby="location_system_overview-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_technical_mailing_list}">
				<li class="fieldcontain">
					<span id="location_technical_mailing_list-label" class="property-label"><g:message code="service.location_technical_mailing_list.label" default="Locationtechnicalmailinglist" /></span>
					
						<g:each in="${serviceInstance.location_technical_mailing_list}" var="l">
						<span class="property-value" aria-labelledby="location_technical_mailing_list-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_user_guide}">
				<li class="fieldcontain">
					<span id="location_user_guide-label" class="property-label"><g:message code="service.location_user_guide.label" default="Locationuserguide" /></span>
					
						<g:each in="${serviceInstance.location_user_guide}" var="l">
						<span class="property-value" aria-labelledby="location_user_guide-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.location_user_mailing_list}">
				<li class="fieldcontain">
					<span id="location_user_mailing_list-label" class="property-label"><g:message code="service.location_user_mailing_list.label" default="Locationusermailinglist" /></span>
					
						<g:each in="${serviceInstance.location_user_mailing_list}" var="l">
						<span class="property-value" aria-labelledby="location_user_mailing_list-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.service_description}">
				<li class="fieldcontain">
					<span id="service_description-label" class="property-label"><g:message code="service.service_description.label" default="Servicedescription" /></span>
					
						<span class="property-value" aria-labelledby="service_description-label"><g:fieldValue bean="${serviceInstance}" field="service_description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.support_description}">
				<li class="fieldcontain">
					<span id="support_description-label" class="property-label"><g:message code="service.support_description.label" default="Supportdescription" /></span>
					
						<span class="property-value" aria-labelledby="support_description-label"><g:fieldValue bean="${serviceInstance}" field="support_description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceInstance?.training_description}">
				<li class="fieldcontain">
					<span id="training_description-label" class="property-label"><g:message code="service.training_description.label" default="Trainingdescription" /></span>
					
						<span class="property-value" aria-labelledby="training_description-label"><g:fieldValue bean="${serviceInstance}" field="training_description"/></span>
					
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
