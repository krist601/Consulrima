<%@ page import="consulrima.Allocation" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'allocation.label', default: 'Allocation')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="create-allocation" class="content scaffold-create" role="main">

            <g:if test="${flash.message}">
                <div class="alert alert-info fade in"><strong>${flash.message}</strong> </div>
                    </g:if>     
                    <g:hasErrors bean="${allocationInstance}">
                        <g:eachError bean="${allocationInstance}" var="error">
                    <div class="alert alert-block alert-danger fade in">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Error!</strong> <g:message error="${error}"/>
                    </div>
                </g:eachError>
            </g:hasErrors>
            <g:form action="save" >
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <h4> Registrar Dotación</h4>
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <div  role="form" >
                                    <g:render template="form"/>
                                    <button type="submit" class="btn btn-info">Continuar</button>
                                </div>
                            </div>

                        </div>
                    </section>

                </div>
            </g:form>
        </div>
        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>

    </body>
</html>
