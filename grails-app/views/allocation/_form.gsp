<%@ page import="consulrima.Allocation" %>
<script>
        $(document).ready(function() {
        $('#contact-location').change(function(){
        var location = $(this).val(),
        div = $('#' + location);

        $('div').hide();
        div.show();

        });
</script>


<div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'allocationDate', 'error')} required">
	<label for="allocationDate">
		<g:message code="allocation.allocationDate.label" default="Allocation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker class="form-control" name="allocationDate" precision="day"  value="${allocationInstance?.allocationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'allocationType', 'error')} required">
	<label for="allocationType">
		<g:message code="allocation.allocationType.label" default="Allocation Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="form-control" name="allocationType" from="${consulrima.Allocation$Type?.values()}" keys="${consulrima.Allocation$Type.values()*.name()}" required="" value="${allocationInstance?.allocationType?.name()}"/>
</div>

<select id="contact-location">
    <option value="">-- Select Location --</option>
    <option value="sydneyBranch">Sydney</option>
    <option value="melbourneBranch">Melbourne</option>
</select>

<div id="sydneyBranch" style="display:none">
    CONTENT 1
</div>

<div id="melbourneBranch" style="display:none">
    CONTENT 2
</div>

<div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="allocation.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="amount" type="number" value="${allocationInstance.amount}" required=""/>
</div>
                <g:hiddenField name="employee.id" value="${allocationInstance?.employee?.id}"/>


<div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'size', 'error')} ">
	<label for="size">
		<g:message code="allocation.size.label" default="Size" />
		
	</label>
	<g:textField class="form-control" name="size" value="${allocationInstance?.size}"/>
</div>
