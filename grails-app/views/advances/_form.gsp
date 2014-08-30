<%@ page import="consulrima.Advances" %>



<div class="fieldcontain ${hasErrors(bean: advancesInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="advances.amount.label" default="Monto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="amount" type="number" value="${advancesInstance.amount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: advancesInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="advances.date.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${advancesInstance?.date}"  />
</div>

<g:hiddenField name="employee.id" value="${advancesInstance?.employee?.id}"/>

