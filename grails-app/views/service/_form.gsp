<%@ page import="servicecattledog.Service" %>



<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="service.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${serviceInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'briefDescription', 'error')} required">
	<label for="briefDescription">
		<g:message code="service.briefDescription.label" default="Brief Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="briefDescription" cols="40" rows="5" maxlength="255" required="" value="${serviceInstance?.briefDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'fullDescription', 'error')} required">
	<label for="fullDescription">
		<g:message code="service.fullDescription.label" default="Full Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="fullDescription" cols="40" rows="5" maxlength="1000" required="" value="${serviceInstance?.fullDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'creatorName', 'error')} required">
	<label for="creatorName">
		<g:message code="service.creatorName.label" default="Creator Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="creatorName" required="" value="${serviceInstance?.creatorName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'creatorEmail', 'error')} required">
	<label for="creatorEmail">
		<g:message code="service.creatorEmail.label" default="Creator Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="creatorEmail" required="" value="${serviceInstance?.creatorEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'categories', 'error')} ">
	<label for="categories">
		<g:message code="service.categories.label" default="Categories" />
		
	</label>
	<g:select name="categories" from="${servicecattledog.Category.list()}" multiple="multiple" optionKey="id" size="5" value="${serviceInstance?.categories*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'currentVersion', 'error')} ">
	<label for="currentVersion">
		<g:message code="service.currentVersion.label" default="Current Version" />
		
	</label>
	<g:textField name="currentVersion" value="${serviceInstance?.currentVersion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'licence', 'error')} ">
	<label for="licence">
		<g:message code="service.licence.label" default="Licence" />
		
	</label>
	<g:textField name="licence" value="${serviceInstance?.licence}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'locations', 'error')} ">
	<label for="locations">
		<g:message code="service.locations.label" default="Locations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${serviceInstance?.locations?}" var="l">
    <li><g:link controller="location" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="location" action="create" params="['service.id': serviceInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'location.label', default: 'Location')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'serviceDescription', 'error')} ">
	<label for="serviceDescription">
		<g:message code="service.serviceDescription.label" default="Service Description" />
		
	</label>
	<g:textField name="serviceDescription" value="${serviceInstance?.serviceDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'supportDescription', 'error')} ">
	<label for="supportDescription">
		<g:message code="service.supportDescription.label" default="Support Description" />
		
	</label>
	<g:textField name="supportDescription" value="${serviceInstance?.supportDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: serviceInstance, field: 'trainingDescription', 'error')} ">
	<label for="trainingDescription">
		<g:message code="service.trainingDescription.label" default="Training Description" />
		
	</label>
	<g:textField name="trainingDescription" value="${serviceInstance?.trainingDescription}"/>
</div>

