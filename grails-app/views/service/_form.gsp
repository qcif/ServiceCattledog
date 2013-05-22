<%@ page import="servicecattledog.Service" %>



<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'brief_description', 'error')} ">
	<label for="brief_description">
		<g:message code="serviceCatalogueEntry.brief_description.label" default="Briefdescription" />
		
	</label>
	<g:textField name="brief_description" value="${serviceCatalogueEntryInstance?.brief_description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'current_version', 'error')} ">
	<label for="current_version">
		<g:message code="serviceCatalogueEntry.current_version.label" default="Currentversion" />
		
	</label>
	<g:textField name="current_version" value="${serviceCatalogueEntryInstance?.current_version}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'full_description', 'error')} ">
	<label for="full_description">
		<g:message code="serviceCatalogueEntry.full_description.label" default="Fulldescription" />
		
	</label>
	<g:textField name="full_description" value="${serviceCatalogueEntryInstance?.full_description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'licence', 'error')} ">
	<label for="licence">
		<g:message code="serviceCatalogueEntry.licence.label" default="Licence" />
		
	</label>
	<g:textField name="licence" value="${serviceCatalogueEntryInstance?.licence}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_codebase', 'error')} ">
	<label for="location_codebase">
		<g:message code="serviceCatalogueEntry.location_codebase.label" default="Locationcodebase" />
		
	</label>
	<g:select name="location_codebase" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_codebase*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_developer_guide', 'error')} ">
	<label for="location_developer_guide">
		<g:message code="serviceCatalogueEntry.location_developer_guide.label" default="Locationdeveloperguide" />
		
	</label>
	<g:select name="location_developer_guide" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_developer_guide*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_developer_resources', 'error')} ">
	<label for="location_developer_resources">
		<g:message code="serviceCatalogueEntry.location_developer_resources.label" default="Locationdeveloperresources" />
		
	</label>
	<g:select name="location_developer_resources" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_developer_resources*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_faq', 'error')} ">
	<label for="location_faq">
		<g:message code="serviceCatalogueEntry.location_faq.label" default="Locationfaq" />
		
	</label>
	<g:select name="location_faq" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_faq*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_install_guide', 'error')} ">
	<label for="location_install_guide">
		<g:message code="serviceCatalogueEntry.location_install_guide.label" default="Locationinstallguide" />
		
	</label>
	<g:select name="location_install_guide" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_install_guide*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_issues_register', 'error')} ">
	<label for="location_issues_register">
		<g:message code="serviceCatalogueEntry.location_issues_register.label" default="Locationissuesregister" />
		
	</label>
	<g:select name="location_issues_register" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_issues_register*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_public_website', 'error')} ">
	<label for="location_public_website">
		<g:message code="serviceCatalogueEntry.location_public_website.label" default="Locationpublicwebsite" />
		
	</label>
	<g:select name="location_public_website" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_public_website*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_registration_pack', 'error')} ">
	<label for="location_registration_pack">
		<g:message code="serviceCatalogueEntry.location_registration_pack.label" default="Locationregistrationpack" />
		
	</label>
	<g:select name="location_registration_pack" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_registration_pack*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_release_notes', 'error')} ">
	<label for="location_release_notes">
		<g:message code="serviceCatalogueEntry.location_release_notes.label" default="Locationreleasenotes" />
		
	</label>
	<g:select name="location_release_notes" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_release_notes*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_security_configuration', 'error')} ">
	<label for="location_security_configuration">
		<g:message code="serviceCatalogueEntry.location_security_configuration.label" default="Locationsecurityconfiguration" />
		
	</label>
	<g:select name="location_security_configuration" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_security_configuration*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_service_desk', 'error')} ">
	<label for="location_service_desk">
		<g:message code="serviceCatalogueEntry.location_service_desk.label" default="Locationservicedesk" />
		
	</label>
	<g:select name="location_service_desk" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_service_desk*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_sysadmin_guide', 'error')} ">
	<label for="location_sysadmin_guide">
		<g:message code="serviceCatalogueEntry.location_sysadmin_guide.label" default="Locationsysadminguide" />
		
	</label>
	<g:select name="location_sysadmin_guide" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_sysadmin_guide*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_system_overview', 'error')} ">
	<label for="location_system_overview">
		<g:message code="serviceCatalogueEntry.location_system_overview.label" default="Locationsystemoverview" />
		
	</label>
	<g:select name="location_system_overview" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_system_overview*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_technical_mailing_list', 'error')} ">
	<label for="location_technical_mailing_list">
		<g:message code="serviceCatalogueEntry.location_technical_mailing_list.label" default="Locationtechnicalmailinglist" />
		
	</label>
	<g:select name="location_technical_mailing_list" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_technical_mailing_list*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_user_guide', 'error')} ">
	<label for="location_user_guide">
		<g:message code="serviceCatalogueEntry.location_user_guide.label" default="Locationuserguide" />
		
	</label>
	<g:select name="location_user_guide" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_user_guide*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'location_user_mailing_list', 'error')} ">
	<label for="location_user_mailing_list">
		<g:message code="serviceCatalogueEntry.location_user_mailing_list.label" default="Locationusermailinglist" />
		
	</label>
	<g:select name="location_user_mailing_list" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceCatalogueEntryInstance?.location_user_mailing_list*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'metadata', 'error')} required">
	<label for="metadata">
		<g:message code="serviceCatalogueEntry.metadata.label" default="Metadata" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="metadata" name="metadata.id" from="${servicecattledog.RecordMetadata.list()}" optionKey="id" required="" value="${serviceCatalogueEntryInstance?.metadata?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'service_description', 'error')} ">
	<label for="service_description">
		<g:message code="serviceCatalogueEntry.service_description.label" default="Servicedescription" />
		
	</label>
	<g:textField name="service_description" value="${serviceCatalogueEntryInstance?.service_description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'support_description', 'error')} ">
	<label for="support_description">
		<g:message code="serviceCatalogueEntry.support_description.label" default="Supportdescription" />
		
	</label>
	<g:textField name="support_description" value="${serviceCatalogueEntryInstance?.support_description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="serviceCatalogueEntry.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${serviceCatalogueEntryInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceCatalogueEntryInstance, field: 'training_description', 'error')} ">
	<label for="training_description">
		<g:message code="serviceCatalogueEntry.training_description.label" default="Trainingdescription" />
		
	</label>
	<g:textField name="training_description" value="${serviceCatalogueEntryInstance?.training_description}"/>
</div>

