<%@ page import="consulrima.Employee" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
    </head>
    <body>  
        <g:hasErrors bean="${employeeInstance}">
            <g:eachError bean="${employeeInstance}" var="error">
                <div class="alert alert-block alert-danger fade in">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <strong>Error!</strong> <g:message error="${error}"/>
                </div>
            </g:eachError>
        </g:hasErrors>
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    <h4> Editar Información de Empleado</h4>
                </header>
                <div class="panel-body">
                    <div class="position-center">
                        <div  role="form" >
                            <g:form method="post"  enctype="multipart/form-data" action="updateAllocation">
                                <g:hiddenField name="id" value="${employeeInstance?.id}" />
                                <g:hiddenField name="version" value="${employeeInstance?.version}" />
                                <fieldset class="form">

                                    <div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'pantSize', 'error')} ">
                                        <label for="pantSize">
                                            <g:message code="employee.pantSize.label" default="Talla de Pantalón" />
                                        </label>
                                        <input class="form-control" name="pantSize" id="cedula" value="${employeeInstance?.pantSize}">
                                    </div>

                                    <div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'shirtSize', 'error')} ">
                                        <label for="shirtSize">
                                            <g:message code="employee.shirtSize.label" default="Talla de Camisa" />

                                        </label>
                                        <input class="form-control" name="shirtSize" id="cedula" value="${employeeInstance?.shirtSize}">
                                    </div>

                                    <div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'shoesSize', 'error')} ">
                                        <label for="shoesSize">
                                            <g:message code="employee.shoesSize.label" default="Talla de Zapatos" />

                                        </label>
                                        <input class="form-control" name="shoesSize" id="cedula" value="${employeeInstance?.shoesSize}">
                                    </div>
                                </fieldset>
                                <fieldset class="buttons">
                                </fieldset>
                                <br>
                                <button type="submit" class="btn btn-info">Continuar</button>
                                <a href="${createLink(controller:'employee', action:'show',id:employeeInstance?.id)}" class="btn btn-danger"> Cancelar</a>
                            </g:form>
                        </div>
                    </div>

                </div>
            </section>

        </div>
        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>

    </body>
</html>
