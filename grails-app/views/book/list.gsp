
<%@ page import="com.mycompany.testks.Book" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="id" title="${message(code: 'book.id.label', default: 'Id')}" />
			
				<g:sortableColumn property="releaseDate" title="${message(code: 'book.releaseDate.label', default: 'Release Date')}" />
			
				<g:sortableColumn property="title" title="${message(code: 'book.title.label', default: 'Title')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${bookInstanceList}" status="i" var="bookInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "id")}</g:link></td>
			
				<td><g:formatDate date="${bookInstance.releaseDate}" /></td>
			
				<td>${fieldValue(bean: bookInstance, field: "title")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${bookInstanceTotal}" />
	</div>
</section>

</body>

</html>
