<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>AeRO Service Catalogue</title>
</head>
<body>
	<a href="#page-body" class="skip"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div id="page-body" role="main">
		<h1>Welcome to the AeRO Service Catalogue</h1>



		<ol class="property-list">

			<li class="fieldcontain"><span class="property-value"> <g:form
						url='[controller: "service", action: "search"]'
						id="searchableForm" name="searchableForm" method="get">
						<g:textField name="q" value="${params.q}" />
						<input type="submit" value="Search" />
					</g:form>
			</span></li>
			
			<li class="fieldcontain"><span class="property-value"><g:link
						controller="service">Browse catalogue</g:link></span></li>
			<li class="fieldcontain"><span class="property-value"><g:link
						controller="category">Browse by category</g:link></span></li>
		</ol>

	</div>
</body>
</html>
