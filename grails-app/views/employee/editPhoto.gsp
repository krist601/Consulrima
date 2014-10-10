<%@ page import="consulrima.Employee" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
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
                    <h4> Agregar o Editar Foto</h4>
                </header>
                <div class="panel-body">
                    <div class="position-center">
                        <div  role="form" >
                            <g:form method="post" action="updatePhoto" class="form-horizontal " enctype="multipart/form-data">
                                <g:hiddenField name="id" value="${employeeInstance?.id}" />
                                <g:hiddenField name="version" value="${employeeInstance?.version}" />
                                <fieldset class="form">
                                   <div class="form-group">

    <section class="panel">

        <div class="panel-body">
          


                <div class="form-group last">
                    <label for="photo" class="control-label col-md-3">Foto</label>
                    <div class="col-md-9">
                        <div class="fileupload fileupload-new" data-provides="fileupload">
                            <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt="" />
                            </div>
                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                            <div>
                                <span class="btn btn-white btn-file">
                                    <span class="fileupload-new"><i class="fa fa-paper-clip"></i> Seleccionar Imagen</span>
                                    <span class="fileupload-exists"><i class="fa fa-undo"></i> Cambiar</span>
                                    <input type="file" name="photo" id="photo" class="default" />
                                </span>
                                <a href="#" class="btn btn-danger fileupload-exists" data-dismiss="fileupload"><i class="fa fa-trash"></i> Remover</a>
                            </div>
                        </div>
                        
                    </div>
                </div>

            
        </div>
    </section>


</div>
                                </fieldset>
                                <fieldset class="buttons">
                                    <button type="submit" class="btn btn-info">Continuar</button>
                                    <a href="${createLink(controller:'employee', action:'show',id:employeeInstance?.id)}" class="btn btn-danger"> Cancelar</a>
                                </fieldset>

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
