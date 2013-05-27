<%@ page import="servicecattledog.Location" %>



<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="location.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="location" required="" value="${locationInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="location.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${locationInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="location.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${locationInstance?.title}"/>
</div>

