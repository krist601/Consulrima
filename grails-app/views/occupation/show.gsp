
<%@ page import="consulrima.Occupation" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'occupation.label', default: 'Occupation')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-12">

                <section class="panel">
                    <header class="panel-heading">
                        <h3>Cargo</h3>
                    </header>
                    <div class="panel-body">
                        <div id="show-occupation" class="content scaffold-show" role="main">
                            <table class="table table-invoice" style="margin-top: 5px;">
                                <tbody>
                                    <tr>
                                        <td style="width: 30%;"><strong>Nombre</strong></td>
                                        <td>${occupationInstance.occupationName}</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 30%;"><strong>Salario</strong></td>
                                        <td>${occupationInstance.salary}</td>
                                    </tr>

                                </tbody>
                            </table>
                            <g:form>
                                <fieldset class="buttons">
                                    <g:hiddenField name="id" value="${occupationInstance?.id}" />
                                    <center>
                                        <g:link class="btn btn-info" action="edit" id="${occupationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                        <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                    </center>
                                </fieldset>
                            </g:form>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>
            
    </body>
</html>
