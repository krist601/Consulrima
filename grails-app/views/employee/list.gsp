<%@ page import="consulrima.Employee" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>

<!--dynamic table-->
        <link href="../js/advanced-datatable/css/demo_page.css" rel="stylesheet" />
        <link href="../js/advanced-datatable/css/demo_table.css" rel="stylesheet" />
        <link rel="stylesheet" href="../js/data-tables/DT_bootstrap.css" />
    </head>
    <body>


        <div id="list-employee" class="content scaffold-list" role="main">

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>


        </div>

        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        <h3>Empleados</h3>
                    </header>
                    <div class="panel-body">
                        <div class="adv-table">
                            <table  class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                    <tr>
                                        <g:sortableColumn property="photo" title="${message(code: 'employee.photo.label', default: 'Foto')}" />
                                        <g:sortableColumn property="cedula" title="${message(code: 'employee.cedula.label', default: 'Cedula')}" />

                                        <g:sortableColumn property="lastName" title="${message(code: 'employee.address.label', default: 'Apellido')}" />

                                        <g:sortableColumn property="name" title="${message(code: 'employee.bornDate.label', default: 'Nombre')}" />


                                        <g:sortableColumn property="email" title="${message(code: 'employee.email.label', default: 'Email')}" />


                                    </tr>
                                </thead>
                                <tbody>
                                    <g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
                                        <tr class="${(i % 2) == 0 ? 'gradeX' : 'gradeC'}">
                                            <td><g:link action="show" id="${employeeInstance.id}">
                                                    <img src="${createLink(controller:'employee', action:'showImage', id: employeeInstance.id)}" width="40" height="40"/>
                                                </g:link>
                                            </td>
                                            <td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "cedula")}</g:link></td>

                                            <td>${fieldValue(bean: employeeInstance, field: "lastName")}</td>

                                            <td>${fieldValue(bean: employeeInstance, field: "name")}</td>

                                            <td>${fieldValue(bean: employeeInstance, field: "email")}</td>


                                        </tr>
                                    </g:each>


                                </tbody>
                            </table>
                        </div>
                    </div>

                    <a href="${createLink(controller:'employee', action:'create')}" class="btn btn-info" style="margin-left: 20px; margin-bottom: 20px;">Crear</a>
                </section>
            </div>
        </div>
        <!-- Placed js at the end of the document so the pages load faster -->

<!--Core js-->
        <script src="../js/jquery.js"></script>
        <script src="../bs3/js/bootstrap.min.js"></script>
        <script class="include" type="text/javascript" src="../js/jquery.dcjqaccordion.2.7.js"></script>
        <script src="../js/jquery.scrollTo.min.js"></script>
        <script src="../js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
        <script src="../js/jquery.nicescroll.js"></script>
        <!--Easy Pie Chart-->
        <script src="../js/easypiechart/jquery.easypiechart.js"></script>
        <!--Sparkline Chart-->
        <script src="../js/sparkline/jquery.sparkline.js"></script>
        <!--jQuery Flot Chart-->
        <script src="../js/flot-chart/jquery.flot.js"></script>
        <script src="../js/flot-chart/jquery.flot.tooltip.min.js"></script>
        <script src="../js/flot-chart/jquery.flot.resize.js"></script>
        <script src="../js/flot-chart/jquery.flot.pie.resize.js"></script>

<!--dynamic table-->
        <script type="text/javascript" language="javascript" src="../js/advanced-datatable/js/jquery.dataTables.js"></script>
        <script type="text/javascript" src="../js/data-tables/DT_bootstrap.js"></script>
        <!--common script init for all pages-->
        <script src="../js/scripts.js"></script>

<!--dynamic table initialization -->
        <script src="../js/dynamic_table_init.js"></script>
        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>

    </body>
</html>
