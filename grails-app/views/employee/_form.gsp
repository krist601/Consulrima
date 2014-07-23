<%@ page import="consulrima.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="employee.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${employeeInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'bornDate', 'error')} required">
	<label for="bornDate">
		<g:message code="employee.bornDate.label" default="Born Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="bornDate" precision="day"  value="${employeeInstance?.bornDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="employee.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cedula" type="number" value="${employeeInstance.cedula}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="employee.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${employeeInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="employee.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="gender" type="number" value="${employeeInstance.gender}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="employee.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${employeeInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="employee.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${employeeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'observation', 'error')} ">
	<label for="observation">
		<g:message code="employee.observation.label" default="Observation" />
		
	</label>
	<g:textField name="observation" value="${employeeInstance?.observation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'photo', 'error')} required">
	<label for="photo">
		<g:message code="employee.photo.label" default="Photo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="photo" type="number" value="${employeeInstance.photo}" required=""/>
</div>

