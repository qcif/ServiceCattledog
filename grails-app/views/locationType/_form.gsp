<%@ page import="servicecattledog.LocationType" %>



<div class="fieldcontain ${hasErrors(bean: locationTypeInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="locationType.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${locationTypeInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: locationTypeInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="locationType.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${locationTypeInstance?.description}"/>
</div>

