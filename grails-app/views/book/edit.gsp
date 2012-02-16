

<%@ page import="com.mycompany.testks.Book" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
	<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>

<body>

<section id="edit" class="first">

	<g:hasErrors bean="${bookInstance}">
	<div class="alert alert-error">
		<g:renderErrors bean="${bookInstance}" as="list" />
	</div>
	</g:hasErrors>

	<g:form method="post" class="form-horizontal" >
		<g:hiddenField name="id" value="${bookInstance?.id}" />
		<g:hiddenField name="version" value="${bookInstance?.version}" />
				
						<div class="control-group ${hasErrors(bean: bookInstance, field: 'releaseDate', 'error')}">
							<label for="releaseDate"><g:message code="book.releaseDate.label" default="Release Date" /></label>
							<div class="controls">
								<g:datePicker name="releaseDate" precision="day" value="${bookInstance?.releaseDate}"  />
								<span class="help-inline">${hasErrors(bean: bookInstance, field: 'releaseDate', 'error')}</span>
							</div>
						</div>
				
						<div class="control-group ${hasErrors(bean: bookInstance, field: 'title', 'error')}">
							<label for="title"><g:message code="book.title.label" default="Title" /></label>
							<div class="controls">
								<g:textField name="title" value="${bookInstance?.title}" />
								<span class="help-inline">${hasErrors(bean: bookInstance, field: 'title', 'error')}</span>
							</div>
						</div>
				
		<div class="form-actions">
			<g:actionSubmit class="save btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
			<g:actionSubmit class="delete btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            <button class="btn" type="reset">Cancel</button>
		</div>
	</g:form>

</section>
			
</body>

</html>
