<%@ page import="consulrima.EmploymentData" %>



<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'charge', 'error')} ">
	<label for="charge">
		<g:message code="employmentData.charge.label" default="Charge" />
		
	</label>
	<g:textField name="charge" value="${employmentDataInstance?.charge}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'client', 'error')} ">
	<label for="client">
		<g:message code="employmentData.client.label" default="Client" />
		
	</label>
	<g:textField name="client" value="${employmentDataInstance?.client}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="employmentData.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${consulrima.Employee.list()}" optionKey="id" required="" value="${employmentDataInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'firstPantEndowmentAmount', 'error')} required">
	<label for="firstPantEndowmentAmount">
		<g:message code="employmentData.firstPantEndowmentAmount.label" default="First Pant Endowment Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="firstPantEndowmentAmount" precision="day"  value="${employmentDataInstance?.firstPantEndowmentAmount}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'firstPantEndowmentDate', 'error')} required">
	<label for="firstPantEndowmentDate">
		<g:message code="employmentData.firstPantEndowmentDate.label" default="First Pant Endowment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="firstPantEndowmentDate" precision="day"  value="${employmentDataInstance?.firstPantEndowmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'firstShirtEndowmentAmount', 'error')} required">
	<label for="firstShirtEndowmentAmount">
		<g:message code="employmentData.firstShirtEndowmentAmount.label" default="First Shirt Endowment Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="firstShirtEndowmentAmount" precision="day"  value="${employmentDataInstance?.firstShirtEndowmentAmount}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'firstShirtEndowmentDate', 'error')} required">
	<label for="firstShirtEndowmentDate">
		<g:message code="employmentData.firstShirtEndowmentDate.label" default="First Shirt Endowment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="firstShirtEndowmentDate" precision="day"  value="${employmentDataInstance?.firstShirtEndowmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'firstShoesEndowmentAmount', 'error')} required">
	<label for="firstShoesEndowmentAmount">
		<g:message code="employmentData.firstShoesEndowmentAmount.label" default="First Shoes Endowment Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="firstShoesEndowmentAmount" precision="day"  value="${employmentDataInstance?.firstShoesEndowmentAmount}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'firstShoesEndowmentDate', 'error')} required">
	<label for="firstShoesEndowmentDate">
		<g:message code="employmentData.firstShoesEndowmentDate.label" default="First Shoes Endowment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="firstShoesEndowmentDate" precision="day"  value="${employmentDataInstance?.firstShoesEndowmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'pantSize', 'error')} ">
	<label for="pantSize">
		<g:message code="employmentData.pantSize.label" default="Pant Size" />
		
	</label>
	<g:textField name="pantSize" value="${employmentDataInstance?.pantSize}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'secondPantEndowmentAmount', 'error')} required">
	<label for="secondPantEndowmentAmount">
		<g:message code="employmentData.secondPantEndowmentAmount.label" default="Second Pant Endowment Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="secondPantEndowmentAmount" precision="day"  value="${employmentDataInstance?.secondPantEndowmentAmount}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'secondPantEndowmentDate', 'error')} required">
	<label for="secondPantEndowmentDate">
		<g:message code="employmentData.secondPantEndowmentDate.label" default="Second Pant Endowment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="secondPantEndowmentDate" precision="day"  value="${employmentDataInstance?.secondPantEndowmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'secondShirtEndowmentAmount', 'error')} required">
	<label for="secondShirtEndowmentAmount">
		<g:message code="employmentData.secondShirtEndowmentAmount.label" default="Second Shirt Endowment Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="secondShirtEndowmentAmount" precision="day"  value="${employmentDataInstance?.secondShirtEndowmentAmount}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'secondShirtEndowmentDate', 'error')} required">
	<label for="secondShirtEndowmentDate">
		<g:message code="employmentData.secondShirtEndowmentDate.label" default="Second Shirt Endowment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="secondShirtEndowmentDate" precision="day"  value="${employmentDataInstance?.secondShirtEndowmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'secondShoestEndowmentAmount', 'error')} required">
	<label for="secondShoestEndowmentAmount">
		<g:message code="employmentData.secondShoestEndowmentAmount.label" default="Second Shoest Endowment Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="secondShoestEndowmentAmount" precision="day"  value="${employmentDataInstance?.secondShoestEndowmentAmount}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'secondShoestEndowmentDate', 'error')} required">
	<label for="secondShoestEndowmentDate">
		<g:message code="employmentData.secondShoestEndowmentDate.label" default="Second Shoest Endowment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="secondShoestEndowmentDate" precision="day"  value="${employmentDataInstance?.secondShoestEndowmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'shirtSize', 'error')} ">
	<label for="shirtSize">
		<g:message code="employmentData.shirtSize.label" default="Shirt Size" />
		
	</label>
	<g:textField name="shirtSize" value="${employmentDataInstance?.shirtSize}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employmentDataInstance, field: 'shoesSize', 'error')} ">
	<label for="shoesSize">
		<g:message code="employmentData.shoesSize.label" default="Shoes Size" />
		
	</label>
	<g:textField name="shoesSize" value="${employmentDataInstance?.shoesSize}"/>
</div>

