<%@ page import="user.SecAppUserSecAppRole" %>



<div class="fieldcontain ${hasErrors(bean: secAppUserSecAppRoleInstance, field: 'secAppRole', 'error')} required">
	<label for="secAppRole">
		<g:message code="secAppUserSecAppRole.secAppRole.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="secAppRole" class="form-control" name="secAppRole.id" from="${user.SecAppRole.list()}" optionKey="id" required="" value="${secAppUserSecAppRoleInstance?.secAppRole?.id}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: secAppUserSecAppRoleInstance, field: 'secAppUser', 'error')} required">
	<label for="secAppUser">
		<g:message code="secAppUserSecAppRole.secAppUser.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="secAppUser" class="form-control" name="secAppUser.id" from="${user.SecAppUser.list()}" optionKey="id" required="" value="${secAppUserSecAppRoleInstance?.secAppUser?.id}"/>
        <br>
    
</div>

