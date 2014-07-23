<%@ page import="consulrima.Load" %>



<div class="fieldcontain ${hasErrors(bean: loadInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="load.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" type="number" value="${loadInstance.amount}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: loadInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="load.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${loadInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: loadInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="load.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${consulrima.Employee.list()}" optionKey="id" required="" value="${loadInstance?.employee?.id}" class="many-to-one"/>
</div>

