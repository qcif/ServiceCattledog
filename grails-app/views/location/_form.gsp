<%@ page import="servicecattledog.Location" %>



<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="location.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${locationInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'service', 'error')} required">
	<label for="service">
		<g:message code="location.service.label" default="Service" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="service" name="service.id" from="${servicecattledog.Service.list()}" optionKey="id" required="" value="${locationInstance?.service?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="location.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${locationInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="location.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${servicecattledog.LocationType.list()}" optionKey="id" required="" value="${locationInstance?.type?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="location.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${locationInstance?.url}"/>
</div>

