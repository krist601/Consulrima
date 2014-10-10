<%@ page import="consulrima.Employee" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
    </head>
    <body>


        <g:form action="save"   enctype="multipart/form-data">


            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        <h4> Registrar Empleado</h4>
                    </header>

                    <div class="panel-body">     
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
                        <g:if test="${flash.message}">
                            <div class="alert alert-info fade in"><strong>${flash.message}</strong> </div>
                                </g:if>
                        <div class="position-center">
                            <div  role="form" >
                                <g:render template="form"/>

                                <button type="submit" class="btn btn-info">Continuar</button>
                            </div>
                        </div>

                    </div>

                </section>

                <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
                <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>
            </div>
        </g:form>
    </body>
</html>