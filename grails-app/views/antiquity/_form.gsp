<%@ page import="consulrima.Antiquity" %>



<div class="fieldcontain ${hasErrors(bean: antiquityInstance, field: 'admissionDate', 'error')} required">
	<label for="admissionDate">
		<g:message code="antiquity.admissionDate.label" default="Admission Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="admissionDate" precision="day"  value="${antiquityInstance?.admissionDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: antiquityInstance, field: 'dischargeDate', 'error')} required">
	<label for="dischargeDate">
		<g:message code="antiquity.dischargeDate.label" default="Discharge Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dischargeDate" precision="day"  value="${antiquityInstance?.dischargeDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: antiquityInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="antiquity.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${consulrima.Employee.list()}" optionKey="id" required="" value="${antiquityInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: antiquityInstance, field: 'observation', 'error')} ">
	<label for="observation">
		<g:message code="antiquity.observation.label" default="Observation" />
		
	</label>
	<g:textField name="observation" value="${antiquityInstance?.observation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: antiquityInstance, field: 'salary', 'error')} required">
	<label for="salary">
		<g:message code="antiquity.salary.label" default="Salary" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salary" type="number" value="${antiquityInstance.salary}" required=""/>
</div>

