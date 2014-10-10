<%@ page import="consulrima.Allocation" %>

<div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'allocationDate', 'error')} required">
    <label for="allocationDate">
        <g:message code="allocation.allocationDate.label" default="Tipo de Dotación" />
        <span class="required-indicator">*</span>
    </label>
    <select class="default form-control" name="allocationType" id="allocationType" value="${allocationInstance?.allocationType?.name()}">
        <option value="Camisa">Camisa</option>
        <option value="Pantalon">Pantalon</option>
        <option value="Zapatos">Zapatos</option>
        <option value="Otros">Otros</option>
    </select>
</div>
<br>
<div id="showMe">
    <div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'otherType', 'error')} required">
        <label for="otherType">
            <g:message code="allocation.otherType.label" default="Nombre de la Dotación" />
            <span class="required-indicator">*</span>
        </label>
        <g:textField class="form-control" name="otherType" value="${allocationInstance?.otherType}"/>
    </div>
    <br>
</div>
<div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'allocationDate', 'error')} required">
    <label for="allocationDate">
        <g:message code="allocation.allocationDate.label" default="Fecha de Dotación" />
        <span class="required-indicator">*</span>
    </label>
    <div class="form-group">
        <input value="${allocationInstance?.allocationDate}" name="allocationDate" class="form-control form-control-inline input-medium default-date-picker"  size="16" type="text" value="" />
    </div>
</div>


<script>
    var elem = document.getElementById("allocationType");
    elem.onchange = function(){
    var hiddenDiv = document.getElementById("showMe");
    if (this.value=="Otros") {
    hiddenDiv.style.display = (this.value == "") ? "none":"block";
    }
    if (this.value!="Otros") {
    hiddenDiv.style.display = "none";
    }
    };
</script>
<style>
    #showMe{
    display:none;
    }
</style>
<div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'amount', 'error')} required">
    <label for="amount">
        <g:message code="allocation.amount.label" default="Cantidad" />
        <span class="required-indicator">*</span>
    </label>
    <g:field class="form-control" name="amount" type="number" value="${allocationInstance.amount}" required=""/>
</div>
<g:hiddenField name="employee.id" value="${allocationInstance?.employee?.id}"/>

<br>
<div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'size', 'error')} ">
    <label for="size">
        <g:message code="allocation.size.label" default="Talla" />

    </label>
    <g:textField class="form-control" name="size" value="${allocationInstance?.size}"/>
</div>
<br>
