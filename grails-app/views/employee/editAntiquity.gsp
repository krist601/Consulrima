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
                            <g:form method="post" action="updateAntiquity">
                                <g:hiddenField name="id" value="${employeeInstance?.id}" />
                                <g:hiddenField name="version" value="${employeeInstance?.version}" />
                                <fieldset class="form">

                                    <div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'salary', 'error')} required">
                                        <label for="salary">
                                            <g:message code="employee.cedula.label" default="Salario" />
                                        </label>
                                        <g:field class="form-control" name="salary" id="cedula" type="number" value="${employeeInstance?.salary}" required=""/>

                                    </div><br>

                                    <div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'occupation', 'error')} ">
                                        <label for="occupation">
                                            <g:message code="employee.occupation.label" default="Ocupación" />

                                        </label>
                                        <g:select id="occupation" name="occupation.id" from="${consulrima.Occupation.list()}" optionKey="id" value="${employeeInstance?.occupation?.id}" class="form-control" noSelection="['null': '']"/>
                                    </div>
                                    <br>

                                    <div class="col-md-12 form-group">
                                        <label for="admissionDate">
                                            <g:message code="employee.admissionDate.label" default="Fecha de Ingreso" />
                                        </label>
                                        <div class="form-group">
                                            <input value="${employeeInstance?.admissionDate.format('MM-dd-yyyy')}" name="admissionDate" class="form-control form-control-inline input-medium default-date-picker"  size="16" type="text" value="" />
                                        </div>
                                    </div>

                                    <g:if test="${employeeInstance?.dischargeDate}" >
                                        <div class="col-md-12 form-group">
                                            <label for="dischargeDate">
                                                <g:message code="employee.dischargeDate.label" default="Fecha de Egreso" />
                                            </label>
                                            <div class="form-group">
                                                <input value="${employeeInstance?.dischargeDate.format('MM-dd-yyyy')}" name="dischargeDate" class="form-control form-control-inline input-medium default-date-picker"  size="16" type="text" value="" />
                                            </div>
                                        </div>
                                    </g:if>
                                    <g:else>
                                        <div class="col-md-12 form-group">
                                            <label for="dischargeDate">
                                                <g:message code="employee.dischargeDate.label" default="Fecha de Egreso" />
                                            </label>
                                            <div class="form-group">
                                                <input value="${employeeInstance?.dischargeDate}" name="dischargeDate" class="form-control form-control-inline input-medium default-date-picker"  size="16" type="text" value="" />
                                            </div>
                                        </div>
                                    </g:else>

                                    <div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'client', 'error')} ">
                                        <label for="client">
                                            <g:message code="employee.cedula.label" default="Cliente" />
                                        </label>
                                        <input class="form-control" name="client" id="cedula" value="${employeeInstance?.client}">
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
