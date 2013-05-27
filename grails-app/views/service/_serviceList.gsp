<ul>
	<g:each in="${searchResults?}" var="services">
		<li>
			${service.title}
		</li>
	</g:each>
</ul>${searchResults}