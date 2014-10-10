
<%@ page import="consulrima.Phone" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'phone.label', default: 'Phone')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-12">

                <section class="panel">     
                    <g:hasErrors bean="${phoneInstance}">
                        <g:eachError bean="${phoneInstance}" var="error">
                            <div class="alert alert-block alert-danger fade in">
                                <button data-dismiss="alert" class="close close-sm" type="button">
                                    <i class="fa fa-times"></i>
                                </button>
                                <strong>Error!</strong> <g:message error="${error}"/>
                            </div>
                        </g:eachError>
                    </g:hasErrors>
                    <header class="panel-heading">
                        <h3>Teléfono</h3>
                    </header>
                    <div class="panel-body">
                        <div id="show-occupation" class="content scaffold-show" role="main">
                            <table class="table table-invoice" style="margin-top: 5px;">
                                <tbody>
                                    <tr>
                                        <td style="width: 30%;">Empleado</td>
                                        <td><g:link controller="employee" action="show" id="${phoneInstance?.employee?.id}">${fieldValue(bean: phoneInstance, field: "employee")}</g:link></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%;">Código de Área</td>
                                        <td>${phoneInstance?.areaCode}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%;">Número de Telefono</td>
                                        <td>${phoneInstance?.phoneNumber}</td>
                                    </tr>
                                </tbody>
                            </table>
                            <g:form>
                                <fieldset class="buttons">
                                    <g:hiddenField name="id" value="${phoneInstance?.id}" />
                                    <center>
                                        <a href="${createLink(action:'edit',id:phoneInstance?.id)}" class="btn btn-info" style="margin-left: 20px; margin-bottom: 20px;">Editar</a>
                                        <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                    </center>
                                </fieldset>
                            </g:form>
                        </div>
                    </div>
                </section>
            </div>

            <g:form>
                <fieldset class="buttons">
                    <g:hiddenField name="id" value="${phoneInstance?.id}" />
                    <g:link class="edit" action="edit" id="${phoneInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>

        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>

    </body>
</html>
