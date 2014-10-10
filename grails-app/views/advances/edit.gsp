<%@ page import="consulrima.Advances" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'advances.label', default: 'Advances')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="edit-advances" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${advancesInstance}">
                <g:eachError bean="${advancesInstance}" var="error">
                    <div class="alert alert-block alert-danger fade in">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Error!</strong> <g:message error="${error}"/>
                    </div>
                </g:eachError>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${advancesInstance?.id}" />
                <g:hiddenField name="version" value="${advancesInstance?.version}" />
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <h4> Registrar Cargo</h4>
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <div  role="form" >
                                    <%@ page import="consulrima.Advances" %>
                                    <div class="fieldcontain ${hasErrors(bean: advancesInstance, field: 'amount', 'error')} required">
                                        <label for="amount">
                                            <g:message code="advances.amount.label" default="Monto" />
                                            <span class="required-indicator">*</span>
                                        </label>
                                        <g:field class="form-control" name="amount" type="number" value="${advancesInstance.amount}" required=""/>
                                    </div>

                                    <div class="col-md-12 form-group">
                                        <label for="date">
                                            <g:message code="advances.date.label" default="Fecha del Avance" />
                                        </label>
                                        <div class="form-group">
                                            <input value="${advancesInstance?.date.format('MM-dd-yyyy')}" name="date" class="form-control form-control-inline input-medium default-date-picker"  size="16" type="text" value="" />
                                        </div>
                                    </div>
                                    <br>

                                    <g:hiddenField name="employee.id" value="${advancesInstance?.employee?.id}"/>



                                    <g:actionSubmit class="btn btn-info" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                                    <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
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
