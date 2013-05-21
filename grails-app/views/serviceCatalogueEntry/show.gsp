
<%@ page import="servicecattledog.ServiceCatalogueEntry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-serviceCatalogueEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-serviceCatalogueEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list serviceCatalogueEntry">
			
				<g:if test="${serviceCatalogueEntryInstance?.brief_description}">
				<li class="fieldcontain">
					<span id="brief_description-label" class="property-label"><g:message code="serviceCatalogueEntry.brief_description.label" default="Briefdescription" /></span>
					
						<span class="property-value" aria-labelledby="brief_description-label"><g:fieldValue bean="${serviceCatalogueEntryInstance}" field="brief_description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.current_version}">
				<li class="fieldcontain">
					<span id="current_version-label" class="property-label"><g:message code="serviceCatalogueEntry.current_version.label" default="Currentversion" /></span>
					
						<span class="property-value" aria-labelledby="current_version-label"><g:fieldValue bean="${serviceCatalogueEntryInstance}" field="current_version"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.full_description}">
				<li class="fieldcontain">
					<span id="full_description-label" class="property-label"><g:message code="serviceCatalogueEntry.full_description.label" default="Fulldescription" /></span>
					
						<span class="property-value" aria-labelledby="full_description-label"><g:fieldValue bean="${serviceCatalogueEntryInstance}" field="full_description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.licence}">
				<li class="fieldcontain">
					<span id="licence-label" class="property-label"><g:message code="serviceCatalogueEntry.licence.label" default="Licence" /></span>
					
						<span class="property-value" aria-labelledby="licence-label"><g:fieldValue bean="${serviceCatalogueEntryInstance}" field="licence"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_codebase}">
				<li class="fieldcontain">
					<span id="location_codebase-label" class="property-label"><g:message code="serviceCatalogueEntry.location_codebase.label" default="Locationcodebase" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_codebase}" var="l">
						<span class="property-value" aria-labelledby="location_codebase-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_developer_guide}">
				<li class="fieldcontain">
					<span id="location_developer_guide-label" class="property-label"><g:message code="serviceCatalogueEntry.location_developer_guide.label" default="Locationdeveloperguide" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_developer_guide}" var="l">
						<span class="property-value" aria-labelledby="location_developer_guide-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_developer_resources}">
				<li class="fieldcontain">
					<span id="location_developer_resources-label" class="property-label"><g:message code="serviceCatalogueEntry.location_developer_resources.label" default="Locationdeveloperresources" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_developer_resources}" var="l">
						<span class="property-value" aria-labelledby="location_developer_resources-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_faq}">
				<li class="fieldcontain">
					<span id="location_faq-label" class="property-label"><g:message code="serviceCatalogueEntry.location_faq.label" default="Locationfaq" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_faq}" var="l">
						<span class="property-value" aria-labelledby="location_faq-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_install_guide}">
				<li class="fieldcontain">
					<span id="location_install_guide-label" class="property-label"><g:message code="serviceCatalogueEntry.location_install_guide.label" default="Locationinstallguide" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_install_guide}" var="l">
						<span class="property-value" aria-labelledby="location_install_guide-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_issues_register}">
				<li class="fieldcontain">
					<span id="location_issues_register-label" class="property-label"><g:message code="serviceCatalogueEntry.location_issues_register.label" default="Locationissuesregister" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_issues_register}" var="l">
						<span class="property-value" aria-labelledby="location_issues_register-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_public_website}">
				<li class="fieldcontain">
					<span id="location_public_website-label" class="property-label"><g:message code="serviceCatalogueEntry.location_public_website.label" default="Locationpublicwebsite" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_public_website}" var="l">
						<span class="property-value" aria-labelledby="location_public_website-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_registration_pack}">
				<li class="fieldcontain">
					<span id="location_registration_pack-label" class="property-label"><g:message code="serviceCatalogueEntry.location_registration_pack.label" default="Locationregistrationpack" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_registration_pack}" var="l">
						<span class="property-value" aria-labelledby="location_registration_pack-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_release_notes}">
				<li class="fieldcontain">
					<span id="location_release_notes-label" class="property-label"><g:message code="serviceCatalogueEntry.location_release_notes.label" default="Locationreleasenotes" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_release_notes}" var="l">
						<span class="property-value" aria-labelledby="location_release_notes-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_security_configuration}">
				<li class="fieldcontain">
					<span id="location_security_configuration-label" class="property-label"><g:message code="serviceCatalogueEntry.location_security_configuration.label" default="Locationsecurityconfiguration" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_security_configuration}" var="l">
						<span class="property-value" aria-labelledby="location_security_configuration-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_service_desk}">
				<li class="fieldcontain">
					<span id="location_service_desk-label" class="property-label"><g:message code="serviceCatalogueEntry.location_service_desk.label" default="Locationservicedesk" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_service_desk}" var="l">
						<span class="property-value" aria-labelledby="location_service_desk-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_sysadmin_guide}">
				<li class="fieldcontain">
					<span id="location_sysadmin_guide-label" class="property-label"><g:message code="serviceCatalogueEntry.location_sysadmin_guide.label" default="Locationsysadminguide" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_sysadmin_guide}" var="l">
						<span class="property-value" aria-labelledby="location_sysadmin_guide-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_system_overview}">
				<li class="fieldcontain">
					<span id="location_system_overview-label" class="property-label"><g:message code="serviceCatalogueEntry.location_system_overview.label" default="Locationsystemoverview" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_system_overview}" var="l">
						<span class="property-value" aria-labelledby="location_system_overview-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_technical_mailing_list}">
				<li class="fieldcontain">
					<span id="location_technical_mailing_list-label" class="property-label"><g:message code="serviceCatalogueEntry.location_technical_mailing_list.label" default="Locationtechnicalmailinglist" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_technical_mailing_list}" var="l">
						<span class="property-value" aria-labelledby="location_technical_mailing_list-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_user_guide}">
				<li class="fieldcontain">
					<span id="location_user_guide-label" class="property-label"><g:message code="serviceCatalogueEntry.location_user_guide.label" default="Locationuserguide" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_user_guide}" var="l">
						<span class="property-value" aria-labelledby="location_user_guide-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.location_user_mailing_list}">
				<li class="fieldcontain">
					<span id="location_user_mailing_list-label" class="property-label"><g:message code="serviceCatalogueEntry.location_user_mailing_list.label" default="Locationusermailinglist" /></span>
					
						<g:each in="${serviceCatalogueEntryInstance.location_user_mailing_list}" var="l">
						<span class="property-value" aria-labelledby="location_user_mailing_list-label"><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.metadata}">
				<li class="fieldcontain">
					<span id="metadata-label" class="property-label"><g:message code="serviceCatalogueEntry.metadata.label" default="Metadata" /></span>
					
						<span class="property-value" aria-labelledby="metadata-label"><g:link controller="recordMetadata" action="show" id="${serviceCatalogueEntryInstance?.metadata?.id}">${serviceCatalogueEntryInstance?.metadata?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.service_description}">
				<li class="fieldcontain">
					<span id="service_description-label" class="property-label"><g:message code="serviceCatalogueEntry.service_description.label" default="Servicedescription" /></span>
					
						<span class="property-value" aria-labelledby="service_description-label"><g:fieldValue bean="${serviceCatalogueEntryInstance}" field="service_description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.support_description}">
				<li class="fieldcontain">
					<span id="support_description-label" class="property-label"><g:message code="serviceCatalogueEntry.support_description.label" default="Supportdescription" /></span>
					
						<span class="property-value" aria-labelledby="support_description-label"><g:fieldValue bean="${serviceCatalogueEntryInstance}" field="support_description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="serviceCatalogueEntry.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${serviceCatalogueEntryInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceCatalogueEntryInstance?.training_description}">
				<li class="fieldcontain">
					<span id="training_description-label" class="property-label"><g:message code="serviceCatalogueEntry.training_description.label" default="Trainingdescription" /></span>
					
						<span class="property-value" aria-labelledby="training_description-label"><g:fieldValue bean="${serviceCatalogueEntryInstance}" field="training_description"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${serviceCatalogueEntryInstance?.id}" />
					<g:link class="edit" action="edit" id="${serviceCatalogueEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
