<%@ page import="consulrima.Allocation" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'allocation.label', default: 'Allocation')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="edit-allocation" class="content scaffold-edit" role="main">

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
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
            <g:form method="post" >
                <g:hiddenField name="id" value="${allocationInstance?.id}" />
                <g:hiddenField name="version" value="${allocationInstance?.version}" />
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            <h4> Editar Dotación</h4>
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <div  role="form" >
                                    <%@ page import="consulrima.Allocation" %>

                                    <div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'allocationDate', 'error')} required">
                                        <label for="allocationDate">
                                            <g:message code="allocation.allocationDate.label" default="Tipo de Dotación" />
                                            <span class="required-indicator">*</span>
                                        </label>
                                        <select class="default form-control" name="allocationType" id="allocationType" value="${allocationInstance?.allocationType?.name()}">
                                            <option value="Camisa">Camisa</option>
                                            <option value="Pantalon">Pantalon</option>
                                            <option value="Zapatos">Zapatos</option>
                                            <option value="Otros">Otros</option>
                                        </select>
                                    </div>
                                    <br>
                                    <div id="showMe">
                                        <div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'otherType', 'error')} required">
                                            <label for="otherType">
                                                <g:message code="allocation.otherType.label" default="Nombre de la Dotación" />
                                                <span class="required-indicator">*</span>
                                            </label>
                                            <g:textField class="form-control" name="otherType" value="${allocationInstance?.otherType}"/>
                                        </div>
                                        <br>
                                    </div>
                                    <div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'allocationDate', 'error')} required">
                                        <label for="allocationDate">
                                            <g:message code="allocation.allocationDate.label" default="Fecha de Dotación" />
                                            <span class="required-indicator">*</span>
                                        </label>
                                      
                                        <div data-date-viewmode="years" data-date-format="dd-mm-yyyy" data-date="${allocationInstance?.allocationDate}"  class="input-append date dpYears">
                                            <input type="text" name="allocationDate" readonly=""  size="16" value="${allocationInstance?.allocationDate.format("MM-dd-yyyy")}" class="form-control">
                                            <span class="input-group-btn add-on">
                                                <button class="btn btn-primary" type="button"><i class="fa fa-calendar"></i></button>
                                            </span>
                                        </div>
                                    </div>


                                    <script>
                                        var elem = document.getElementById("allocationType");
                                        elem.onchange = function(){
                                        var hiddenDiv = document.getElementById("showMe");
                                        if (this.value=="Otros") {
                                        hiddenDiv.style.display = (this.value == "") ? "none":"block";
                                        }
                                        if (this.value!="Otros") {
                                        hiddenDiv.style.display = "none";
                                        }
                                        };
                                    </script>
                                    <style>
                                        #showMe{
                                        display:none;
                                        }
                                    </style>
                                    <div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'amount', 'error')} required">
                                        <label for="amount">
                                            <g:message code="allocation.amount.label" default="Cantidad" />
                                            <span class="required-indicator">*</span>
                                        </label>
                                        <g:field class="form-control" name="amount" type="number" value="${allocationInstance.amount}" required=""/>
                                    </div>
                                    <g:hiddenField name="employee.id" value="${allocationInstance?.employee?.id}"/>

                                    <br>
                                    <div class="fieldcontain ${hasErrors(bean: allocationInstance, field: 'size', 'error')} ">
                                        <label for="size">
                                            <g:message code="allocation.size.label" default="Talla" />

                                        </label>
                                        <g:textField class="form-control" name="size" value="${allocationInstance?.size}"/>
                                    </div>
                                    <br>


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
