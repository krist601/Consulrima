<%@ page import="user.SecAppRole" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'secAppRole.label', default: 'SecAppRole')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="edit-secAppRole" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${secAppRoleInstance}">
                <g:eachError bean="${secAppRoleInstance}" var="error">
                    <div class="alert alert-block alert-danger fade in">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Error!</strong> <g:message error="${error}"/>
                    </div>
                </g:eachError>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${secAppRoleInstance?.id}" />
                <g:hiddenField name="version" value="${secAppRoleInstance?.version}" />
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
