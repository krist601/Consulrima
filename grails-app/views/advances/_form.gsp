<%@ page import="consulrima.Advances" %>



<div class="fieldcontain ${hasErrors(bean: advancesInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="advances.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" type="number" value="${advancesInstance.amount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: advancesInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="advances.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${advancesInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: advancesInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="advances.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${consulrima.Employee.list()}" optionKey="id" required="" value="${advancesInstance?.employee?.id}" class="many-to-one"/>
</div>

