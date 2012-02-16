
<%@ page import="com.mycompany.testks.Book" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.id.label" default="Id" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "id")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.releaseDate.label" default="Release Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${bookInstance?.releaseDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="book.title.label" default="Title" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: bookInstance, field: "title")}</td>
				
			</tr>
		
		</tbody>
	</table>
	<div class="buttons">
		<g:form>
			<g:hiddenField name="id" value="${bookInstance?.id}" />
			<span class="button"><g:actionSubmit class="edit btn-primary" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
			<span class="button"><g:actionSubmit class="delete btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
		</g:form>
	</div>
</section>

</body>

</html>
