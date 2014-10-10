
<%@ page import="user.SecAppRole" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'secAppRole.label', default: 'SecAppRole')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="show-secAppRole" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
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
            <ol class="property-list secAppRole">

                <g:if test="${secAppRoleInstance?.authority}">
                    <li class="fieldcontain">
                        <span id="authority-label" class="property-label"><g:message code="secAppRole.authority.label" default="Authority" /></span>

                        <span class="property-value" aria-labelledby="authority-label"><g:fieldValue bean="${secAppRoleInstance}" field="authority"/></span>

                    </li>
                </g:if>

            </ol>
            <g:form>
                <fieldset class="buttons">
                    <g:hiddenField name="id" value="${secAppRoleInstance?.id}" />
                    <g:link class="edit" action="edit" id="${secAppRoleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
