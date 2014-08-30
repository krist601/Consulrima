<%@ page import="consulrima.Employee" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-switch.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/bootstrap-fileupload', file: 'bootstrap-fileupload.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/bootstrap-wysihtml5', file: 'bootstrap-wysihtml5.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/bootstrap-datepicker/css', file: 'datepicker.css')}" />

        <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/bootstrap-colorpicker/css', file: 'colorpicker.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/bootstrap-daterangepicker', file: 'daterangepicker-bs3.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/bootstrap-datetimepicker/css', file: 'datetimepicker.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/jquery-multi-select/css', file: 'multi-select.css')}" />
        <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/jquery-tags-input', file: 'jquery.tagsinput.css')}" />

        <link rel="stylesheet" type="text/css" href="${resource(dir: 'js/select2', file: 'select2.css')}" />
    </head>
    <body>
        <g:hasErrors bean="${employeeInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${employeeInstance}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
            </ul>
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


<!--Core js-->
        <script src="../js/jquery.js"></script>
        <script src="../js/jquery-1.8.3.min.js"></script>
        <script src="../bs3/js/bootstrap.min.js"></script>
        <script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
        <script class="include" type="text/javascript" src="../js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="../js/jquery.scrollTo.min.js"></script>
        <script src="../js/easypiechart/jquery.easypiechart.js"></script>
        <script src="../js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
        <script src="../js/jquery.nicescroll.js"></script>
        <script src="../js/jquery.nicescroll.js"></script>

        <script src="../js/bootstrap-switch.js"></script>

        <script type="text/javascript" src="../js/fuelux/js/spinner.min.js"></script>
        <script type="text/javascript" src="../js/bootstrap-fileupload/bootstrap-fileupload.js"></script>
        <script type="text/javascript" src="../js/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
        <script type="text/javascript" src="../js/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
        <script type="text/javascript" src="../js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="../js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
        <script type="text/javascript" src="../js/bootstrap-daterangepicker/moment.min.js"></script>
        <script type="text/javascript" src="../js/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script type="text/javascript" src="../js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
        <script type="text/javascript" src="../js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
        <script type="text/javascript" src="../js/jquery-multi-select/js/jquery.multi-select.js"></script>
        <script type="text/javascript" src="../js/jquery-multi-select/js/jquery.quicksearch.js"></script>

        <script type="text/javascript" src="../js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>

        <script src="../js/jquery-tags-input/jquery.tagsinput.js"></script>

        <script src="../js/select2/select2.js"></script>
        <script src="../js/select-init.js"></script>


<!--common script init for all pages-->
        <script src="../js/scripts.js"></script>

        <script src="../js/toggle-init.js"></script>

        <script src="../js/advanced-form.js"></script>
        <!--Easy Pie Chart-->
        <script src="../js/easypiechart/jquery.easypiechart.js"></script>
        <!--Sparkline Chart-->
        <script src="../js/sparkline/jquery.sparkline.js"></script>
        <!--jQuery Flot Chart-->
        <script src="../js/flot-chart/jquery.flot.js"></script>
        <script src="../js/flot-chart/jquery.flot.tooltip.min.js"></script>
        <script src="../js/flot-chart/jquery.flot.resize.js"></script>
        <script src="../js/flot-chart/jquery.flot.pie.resize.js"></script>
        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>
            
    </body>
</html>