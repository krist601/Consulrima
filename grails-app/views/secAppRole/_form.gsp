<%@ page import="user.SecAppRole" %>



<div class="fieldcontain ${hasErrors(bean: secAppRoleInstance, field: 'authority', 'error')} required">
	<label for="authority">
		<g:message code="secAppRole.authority.label" default="Authority" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="authority" required="" value="${secAppRoleInstance?.authority}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secAppRoleInstance, field: 'secAppUserSecAppRole', 'error')} ">
	<label for="secAppUserSecAppRole">
		<g:message code="secAppRole.secAppUserSecAppRole.label" default="Sec App User Sec App Role" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${secAppRoleInstance?.secAppUserSecAppRole?}" var="s">
    <li><g:link controller="secAppUserSecAppRole" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="secAppUserSecAppRole" action="create" params="['secAppRole.id': secAppRoleInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'secAppUserSecAppRole.label', default: 'SecAppUserSecAppRole')])}</g:link>
</li>
</ul>

</div>

