
<%@ page import="servicecattledog.Service" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serviceCatalogueEntry.label', default: 'ServiceCatalogueEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-serviceCatalogueEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-serviceCatalogueEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="brief_description" title="${message(code: 'serviceCatalogueEntry.brief_description.label', default: 'Briefdescription')}" />
					
						<g:sortableColumn property="current_version" title="${message(code: 'serviceCatalogueEntry.current_version.label', default: 'Currentversion')}" />
					
						<g:sortableColumn property="full_description" title="${message(code: 'serviceCatalogueEntry.full_description.label', default: 'Fulldescription')}" />
					
						<g:sortableColumn property="licence" title="${message(code: 'serviceCatalogueEntry.licence.label', default: 'Licence')}" />
					
						<th><g:message code="serviceCatalogueEntry.metadata.label" default="Metadata" /></th>
					
						<g:sortableColumn property="service_description" title="${message(code: 'serviceCatalogueEntry.service_description.label', default: 'Servicedescription')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${serviceCatalogueEntryInstanceList}" status="i" var="serviceCatalogueEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${serviceCatalogueEntryInstance.id}">${fieldValue(bean: serviceCatalogueEntryInstance, field: "brief_description")}</g:link></td>
					
						<td>${fieldValue(bean: serviceCatalogueEntryInstance, field: "current_version")}</td>
					
						<td>${fieldValue(bean: serviceCatalogueEntryInstance, field: "full_description")}</td>
					
						<td>${fieldValue(bean: serviceCatalogueEntryInstance, field: "licence")}</td>
					
						<td>${fieldValue(bean: serviceCatalogueEntryInstance, field: "metadata")}</td>
					
						<td>${fieldValue(bean: serviceCatalogueEntryInstance, field: "service_description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serviceCatalogueEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
