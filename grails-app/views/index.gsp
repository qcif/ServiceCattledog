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
		
		<div id="searchBox">
		Search: <g:textField name="searchField" name="searchField"/> OR <g:link controller="service">Browse</g:link>
		
		<div id="searchResults" name="resultsPanel"></div>
		</div>
		<r:script>
			$("#searchField").keyup(function(){
				$("#searchResults").load("${createLink(controller:"service", action:"search")}?q=" + this.value)
			});
		</r:script>
		 
		
		
	</div>
</body>
</html>
