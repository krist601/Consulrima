<%@ page import="consulrima.Phone" %>


<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'areaCode', 'error')} required">
	<label for="areaCode">
		<g:message code="phone.areaCode.label" default="Código de Área" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="areaCode" class="form-control" type="number" value="${phoneInstance.areaCode}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="phone.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" class="form-control" name="employee.id" from="${consulrima.Employee.list()}" optionKey="id" required="" value="${phoneInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'phoneNumber', 'error')} required">
	<label for="phoneNumber">
		<g:message code="phone.phoneNumber.label" default="Número de Teléfono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="phoneNumber" class="form-control" type="number" value="${phoneInstance.phoneNumber}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="phone.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="type" class="form-control" type="number" value="${phoneInstance.type}" required=""/>
</div>