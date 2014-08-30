
<%@ page import="consulrima.Occupation" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'occupation.label', default: 'Occupation')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        <h3>Lista de Cargos</h3>
                    </header>
                    <div class="panel-body">
                        <div class="adv-table">
                            <table  class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                    <tr>

                                        <g:sortableColumn property="occupationName" title="${message(code: 'occupation.occupationName.label', default: 'Occupation Name')}" />

                                        <g:sortableColumn property="salary" title="${message(code: 'occupation.salary.label', default: 'Salary')}" />

                                    </tr>
                                </thead>
                                <tbody>
                                    <g:each in="${occupationInstanceList}" status="i" var="occupationInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                            <td><g:link action="show" id="${occupationInstance.id}">${fieldValue(bean: occupationInstance, field: "occupationName")}</g:link></td>

                                            <td>${fieldValue(bean: occupationInstance, field: "salary")}</td>

                                        </tr>
                                    </g:each>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <a href="${createLink(controller:'occupation', action:'create')}" class="btn btn-info" style="margin-left: 20px; margin-bottom: 20px;">Crear</a>
                </section>
            </div>
        </div>
        <div class="pagination">
            <g:paginate total="${occupationInstanceTotal}" />
        </div>
    </div>
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
