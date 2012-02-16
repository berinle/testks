

<%@ page import="com.mycompany.testks.Book" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

<section id="create" class="first">

	<g:hasErrors bean="${bookInstance}">
	<div class="alert alert-error">
		<g:renderErrors bean="${bookInstance}" as="list" />
	</div>
	</g:hasErrors>
	
	<g:form action="save" class="form-horizontal" >
				
							<div class="control-group ${hasErrors(bean: bookInstance, field: 'releaseDate', 'error')}">
								<label for="releaseDate" class="control-label"><g:message code="book.releaseDate.label" default="Release Date" /></label>
				            	<div class="controls">
									<g:datePicker name="releaseDate" precision="day" value="${bookInstance?.releaseDate}"  />
									<span class="help-inline">${hasErrors(bean: bookInstance, field: 'releaseDate', 'error')}</span>
								</div>
							</div>
				
							<div class="control-group ${hasErrors(bean: bookInstance, field: 'title', 'error')}">
								<label for="title" class="control-label"><g:message code="book.title.label" default="Title" /></label>
				            	<div class="controls">
									<g:textField name="title" value="${bookInstance?.title}" />
									<span class="help-inline">${hasErrors(bean: bookInstance, field: 'title', 'error')}</span>
								</div>
							</div>
				
		<div class="form-actions">
			<g:submitButton name="create" class="save btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            <button class="btn" type="reset">Cancel</button>
		</div>
	</g:form>
	
</section>
		
</body>

</html>
