<%@ page import="consulrima.Advances" %>

<div class="fieldcontain ${hasErrors(bean: advancesInstance, field: 'amount', 'error')} required">
    <label for="amount">
        <g:message code="advances.amount.label" default="Monto" />
        <span class="required-indicator">*</span>
    </label>
    <g:field class="form-control" name="amount" type="number" value="${advancesInstance.amount}" required=""/>
</div>

<div class="col-md-12 form-group">
    <label for="date">
        <g:message code="advances.date.label" default="Fecha del Avance" />
    </label>
    <div class="form-group">
        <input value="${advancesInstance?.date}" name="date" class="form-control form-control-inline input-medium default-date-picker"  size="16" type="text" value="" />


    </div>
</div>
<br>

<g:hiddenField name="employee.id" value="${advancesInstance?.employee?.id}"/>
