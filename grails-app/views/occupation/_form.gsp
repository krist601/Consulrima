<%@ page import="consulrima.Occupation" %>



<div class="fieldcontain ${hasErrors(bean: occupationInstance, field: 'occupationName', 'error')} ">
	<label for="occupationName">
		<g:message code="occupation.occupationName.label" default="Nombre de la Ocupación" />
		
	</label>
	<g:textField class="form-control" name="occupationName" value="${occupationInstance?.occupationName}"/>
</div>
<br>

<div class="fieldcontain ${hasErrors(bean: occupationInstance, field: 'salary', 'error')} required">
	<label for="salary">
		<g:message code="occupation.salary.label" default="Salario" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="salary" type="text" value="${occupationInstance.salary}" required=""/>
</div>
<br>

