<%@ page import="com.mycompany.testks.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'releaseDate', 'error')} required">
	<label for="releaseDate">
		<g:message code="book.releaseDate.label" default="Release Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="releaseDate" precision="day" value="${bookInstance?.releaseDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="book.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${bookInstance?.title}" />
</div>

