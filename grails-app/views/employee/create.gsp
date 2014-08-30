<%@ page import="consulrima.Employee" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>

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


        <g:form action="save"   enctype="multipart/form-data">


            <div class="col-lg-12">
                <section class="panel">
                    <header class="panel-heading">
                        <h4> Registrar Empleado</h4>
                    </header>
                    
                    <div class="panel-body">
                        <g:hasErrors bean="${employeeInstance}">
                        <ul class="alert alert-block alert-danger fade in" role="alert">
                            <g:eachError bean="${employeeInstance}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                </g:eachError>
                        </ul>
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

            </div>
        </g:form>








<!--Core js-->
        <script src="${resource(dir: 'js', file: 'jquery.js')}"></script>
        <script src="${resource(dir: 'js', file: 'jquery-1.8.3.min.js')}"></script>
        <script src="${resource(dir: 'bs3/js', file: 'bootstrap.min.js')}"></script>
        <script src="${resource(dir: 'js', file: 'jquery-ui-1.9.2.custom.min.js')}"></script>
        <script class="include" type="text/javascript" src="${resource(dir: 'js', file: 'jquery.dcjqaccordion.2.7.js')}"></script>
        <script src="${resource(dir: 'js', file: 'jquery.scrollTo.min.js')}"></script>
        <script src="${resource(dir: 'js/easypiechart', file: 'jquery.easypiechart.js')}"></script>
        <script src="${resource(dir: 'js/jQuery-slimScroll-1.3.0', file: 'jquery.slimscroll.js')}"></script>
        <script src="${resource(dir: 'js', file: 'jquery.nicescroll.js')}"></script>
        <script src="${resource(dir: 'js', file: 'jquery.nicescroll.js')}"></script>

        <script src="${resource(dir: 'js', file: 'bootstrap-switch.js')}"></script>

        <script type="text/javascript" src="${resource(dir: 'js/fuelux/js', file: 'spinner.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/bootstrap-fileupload', file: 'bootstrap-fileupload.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/bootstrap-wysihtml5', file: 'wysihtml5-0.3.0.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/bootstrap-wysihtml5', file: 'bootstrap-wysihtml5.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/bootstrap-datepicker/js', file: 'bootstrap-datepicker.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/bootstrap-datetimepicker/js', file: 'bootstrap-datetimepicker.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/bootstrap-daterangepicker', file: 'moment.min.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/bootstrap-daterangepicker', file: 'daterangepicker.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/bootstrap-colorpicker/js', file: 'bootstrap-colorpicker.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/bootstrap-timepicker/js', file: 'bootstrap-timepicker.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/jquery-multi-select/js', file: 'jquery.multi-select.js')}"></script>
        <script type="text/javascript" src="${resource(dir: 'js/jquery-multi-select/js', file: 'jquery.quicksearch.js')}"></script>

        <script type="text/javascript" src="${resource(dir: 'js/bootstrap-inputmask', file: 'bootstrap-inputmask.min.js')}"></script>

        <script src="${resource(dir: 'js/jquery-tags-input', file: 'jquery.tagsinput.js')}"></script>

        <script src="${resource(dir: 'js/select2', file: 'select2.js')}"></script>
        <script src="${resource(dir: 'js', file: 'select-init.js')}"></script>


<!--common script init for all pages-->
        <script src="${resource(dir: 'js', file: 'scripts.js')}"></script>

        <script src="${resource(dir: 'js', file: 'toggle-init.js')}"></script>

        <script src="${resource(dir: 'js', file: 'advanced-form.js')}"></script>
        <!--Easy Pie Chart-->
        <script src="${resource(dir: 'js/easypiechart', file: 'jquery.easypiechart.js')}"></script>
        <!--Sparkline Chart-->
        <script src="${resource(dir: 'js/sparkline', file: 'jquery.sparkline.js')}"></script>
        <!--jQuery Flot Chart-->
        <script src="${resource(dir: 'js/flot-chart', file: 'jquery.flot.js')}"></script>
        <script src="${resource(dir: 'js/flot-chart', file: 'jquery.flot.tooltip.min.js')}"></script>
        <script src="${resource(dir: 'js/flot-chart', file: 'jquery.flot.resize.js')}"></script>
        <script src="${resource(dir: 'js/flot-chart', file: 'jquery.flot.pie.resize.js')}"></script>


        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>

    </body>
</html>