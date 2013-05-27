<%@ page import="servicecattledog.Service" %>



<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="service.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${serviceInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'brief_description', 'error')} required">
	<label for="brief_description">
		<g:message code="service.brief_description.label" default="Briefdescription" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="brief_description" required="" value="${serviceInstance?.brief_description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'full_description', 'error')} required">
	<label for="full_description">
		<g:message code="service.full_description.label" default="Fulldescription" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="full_description" required="" value="${serviceInstance?.full_description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'creator_name', 'error')} required">
	<label for="creator_name">
		<g:message code="service.creator_name.label" default="Creatorname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="creator_name" required="" value="${serviceInstance?.creator_name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'creator_email', 'error')} required">
	<label for="creator_email">
		<g:message code="service.creator_email.label" default="Creatoremail" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="creator_email" required="" value="${serviceInstance?.creator_email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'current_version', 'error')} ">
	<label for="current_version">
		<g:message code="service.current_version.label" default="Currentversion" />
		
	</label>
	<g:textField name="current_version" value="${serviceInstance?.current_version}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'licence', 'error')} ">
	<label for="licence">
		<g:message code="service.licence.label" default="Licence" />
		
	</label>
	<g:textField name="licence" value="${serviceInstance?.licence}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_codebase', 'error')} ">
	<label for="location_codebase">
		<g:message code="service.location_codebase.label" default="Locationcodebase" />
		
	</label>
	<g:select name="location_codebase" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_codebase*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_developer_guide', 'error')} ">
	<label for="location_developer_guide">
		<g:message code="service.location_developer_guide.label" default="Locationdeveloperguide" />
		
	</label>
	<g:select name="location_developer_guide" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_developer_guide*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_developer_resources', 'error')} ">
	<label for="location_developer_resources">
		<g:message code="service.location_developer_resources.label" default="Locationdeveloperresources" />
		
	</label>
	<g:select name="location_developer_resources" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_developer_resources*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_faq', 'error')} ">
	<label for="location_faq">
		<g:message code="service.location_faq.label" default="Locationfaq" />
		
	</label>
	<g:select name="location_faq" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_faq*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_install_guide', 'error')} ">
	<label for="location_install_guide">
		<g:message code="service.location_install_guide.label" default="Locationinstallguide" />
		
	</label>
	<g:select name="location_install_guide" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_install_guide*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_issues_register', 'error')} ">
	<label for="location_issues_register">
		<g:message code="service.location_issues_register.label" default="Locationissuesregister" />
		
	</label>
	<g:select name="location_issues_register" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_issues_register*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_public_website', 'error')} ">
	<label for="location_public_website">
		<g:message code="service.location_public_website.label" default="Locationpublicwebsite" />
		
	</label>
	<g:select name="location_public_website" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_public_website*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_registration_pack', 'error')} ">
	<label for="location_registration_pack">
		<g:message code="service.location_registration_pack.label" default="Locationregistrationpack" />
		
	</label>
	<g:select name="location_registration_pack" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_registration_pack*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_release_notes', 'error')} ">
	<label for="location_release_notes">
		<g:message code="service.location_release_notes.label" default="Locationreleasenotes" />
		
	</label>
	<g:select name="location_release_notes" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_release_notes*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_security_configuration', 'error')} ">
	<label for="location_security_configuration">
		<g:message code="service.location_security_configuration.label" default="Locationsecurityconfiguration" />
		
	</label>
	<g:select name="location_security_configuration" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_security_configuration*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_service_desk', 'error')} ">
	<label for="location_service_desk">
		<g:message code="service.location_service_desk.label" default="Locationservicedesk" />
		
	</label>
	<g:select name="location_service_desk" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_service_desk*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_sysadmin_guide', 'error')} ">
	<label for="location_sysadmin_guide">
		<g:message code="service.location_sysadmin_guide.label" default="Locationsysadminguide" />
		
	</label>
	<g:select name="location_sysadmin_guide" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_sysadmin_guide*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_system_overview', 'error')} ">
	<label for="location_system_overview">
		<g:message code="service.location_system_overview.label" default="Locationsystemoverview" />
		
	</label>
	<g:select name="location_system_overview" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_system_overview*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_technical_mailing_list', 'error')} ">
	<label for="location_technical_mailing_list">
		<g:message code="service.location_technical_mailing_list.label" default="Locationtechnicalmailinglist" />
		
	</label>
	<g:select name="location_technical_mailing_list" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_technical_mailing_list*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_user_guide', 'error')} ">
	<label for="location_user_guide">
		<g:message code="service.location_user_guide.label" default="Locationuserguide" />
		
	</label>
	<g:select name="location_user_guide" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_user_guide*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'location_user_mailing_list', 'error')} ">
	<label for="location_user_mailing_list">
		<g:message code="service.location_user_mailing_list.label" default="Locationusermailinglist" />
		
	</label>
	<g:select name="location_user_mailing_list" from="${servicecattledog.Location.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.location_user_mailing_list*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'service_description', 'error')} ">
	<label for="service_description">
		<g:message code="service.service_description.label" default="Servicedescription" />
		
	</label>
	<g:textField name="service_description" value="${serviceInstance?.service_description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'support_description', 'error')} ">
	<label for="support_description">
		<g:message code="service.support_description.label" default="Supportdescription" />
		
	</label>
	<g:textField name="support_description" value="${serviceInstance?.support_description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'training_description', 'error')} ">
	<label for="training_description">
		<g:message code="service.training_description.label" default="Trainingdescription" />
		
	</label>
	<g:textField name="training_description" value="${serviceInstance?.training_description}"/>
</div>

