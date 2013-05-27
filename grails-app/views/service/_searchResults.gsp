<div id="searchResults" class="searchResults">
	<g:if test="${results}">
		<div id="serviceResults" class="resultsPane">
			<h2>Search results</h2>
			<g:render template="serviceList"
				model="['service':results]">
			</g:render>
		</div>
	</g:if>
</div>