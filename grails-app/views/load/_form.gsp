<%@ page import="consulrima.Load" %>



<div class="fieldcontain ${hasErrors(bean: loadInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="load.amount.label" default="Monto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="amount" type="number" value="${loadInstance.amount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: loadInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="load.date.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${loadInstance?.date}"  />
</div>

<g:hiddenField name="employee.id" value="${loadInstance?.employee?.id}"/>

