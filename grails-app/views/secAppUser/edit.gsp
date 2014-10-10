<%@ page import="user.SecAppUser" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'secAppUser.label', default: 'SecAppUser')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="row">
            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        <h4> Editar Usuario</h4>
                    </header>

                    <div class="panel-body">

                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <g:hasErrors bean="${secAppUserInstance}">
                            <g:eachError bean="${secAppUserInstance}" var="error">
                                <div class="alert alert-block alert-danger fade in">
                                    <button data-dismiss="alert" class="close close-sm" type="button">
                                        <i class="fa fa-times"></i>
                                    </button>
                                    <strong>Error!</strong> <g:message error="${error}"/>
                                </div>
                            </g:eachError>
                        </g:hasErrors>
                        <div class="position-center">
                            <div  role="form" >
                            <g:form method="post"  enctype="multipart/form-data" action="update">
                                <g:hiddenField name="id" value="${secAppUserInstance?.id}" />
                                <g:hiddenField name="version" value="${secAppUserInstance?.version}" />
                             
                                    <div class="fieldcontain ${hasErrors(bean: secAppUserInstance, field: 'username', 'error')} required">
                                        <label for="username">
                                            <g:message code="secAppUser.username.label" default="Username" />
                                            <span class="required-indicator">*</span>
                                        </label>
                                        <g:textField name="username" class="form-control" required="" value="${secAppUserInstance?.username}"/>
                                    </div>

                                    <div class="fieldcontain ${hasErrors(bean: secAppUserInstance, field: 'name', 'error')} ">
                                        <label for="name">
                                            <g:message code="secAppUser.name.label" default="Nombre" />

                                        </label>
                                        <g:textField class="form-control" name="name" value="${secAppUserInstance?.name}"/>
                                    </div>

                                    <div class="fieldcontain ${hasErrors(bean: secAppUserInstance, field: 'email', 'error')} ">
                                        <label for="email">
                                            <g:message code="secAppUser.email.label" default="Correo" />

                                        </label>
                                        <g:textField class="form-control" name="email" value="${secAppUserInstance?.email}"/>
                                    </div>
                                    <br>
                                    <div  class="row">
                                        <div class="col-md-6 form-group">
                                            <label for="accountExpired">
                                                <g:message code="secAppUser.accountExpired.label" default="Cuenta Vencida" />

                                            </label>
                                            <br>
                                            <g:checkBox class="form-control" name="accountExpired" value="${secAppUserInstance?.accountExpired}" />
                                        </div>

                                        <div class="col-md-6 form-group">
                                            <label for="accountLocked">
                                                <g:message code="secAppUser.accountLocked.label" default="CuentaBloqueada" />

                                            </label>
                                            <br>
                                            <g:checkBox class="form-control" name="accountLocked" value="${secAppUserInstance?.accountLocked}" />
                                        </div>

                                        <div class="col-md-6 form-group">
                                            <label for="enabled">
                                                <g:message code="secAppUser.enabled.label" default="Activada" />

                                            </label>
                                            <br>
                                            <g:checkBox class="form-control" name="enabled" value="${secAppUserInstance?.enabled}" />
                                        </div>

                                        <div class="col-md-6 form-group">
                                            <label for="passwordExpired">
                                                <g:message code="secAppUser.passwordExpired.label" default="Se Vence la Contraseña" />

                                            </label>
                                            <br>
                                            <g:checkBox  class="form-control"" name="passwordExpired" value="${secAppUserInstance?.passwordExpired}" />
                                        </div>
                                    </div>

                           
                                <fieldset class="buttons">
                                </fieldset>
                                    <button type="submit" class="btn btn-info">Continuar</button>
                                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </g:form>
                            </div>
                        </div>
                    </div>
            </div>
        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>
        </section>

    </div>

    </body>
</html>
