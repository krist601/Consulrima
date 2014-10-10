<%@ page import="consulrima.Load" %>

<div class="fieldcontain ${hasErrors(bean: loadInstance, field: 'amount', 'error')} required">
    <label for="amount">
        <g:message code="load.amount.label" default="Monto" />
        <span class="required-indicator">*</span>
    </label>
    <g:field class="form-control" name="amount" type="number" value="${loadInstance.amount}" required=""/>
</div>

<div class="col-md-12 form-group">
    <label for="date">
        <g:message code="load.date.label" default="Fecha del Prestamo" />
    </label>
    <div class="form-group">
        <input value="${loadInstance?.date}" name="date" class="form-control form-control-inline input-medium default-date-picker"  size="16" type="text" value="" />
     

    </div>
</div>
<br>

<g:hiddenField name="employee.id" value="${loadInstance?.employee?.id}"/>

