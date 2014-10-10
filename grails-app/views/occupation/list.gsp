<%@ page import="consulrima.Occupation" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'occupation.label', default: 'Occupation')}" />
    </head>
    <body>
        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <g:hasErrors bean="${occupationInstance}">
                        <g:eachError bean="${occupationInstance}" var="error">
                            <div class="alert alert-block alert-danger fade in">
                                <button data-dismiss="alert" class="close close-sm" type="button">
                                    <i class="fa fa-times"></i>
                                </button>
                                <strong>Error!</strong> <g:message error="${error}"/>
                            </div>
                        </g:eachError>
                    </g:hasErrors>
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
        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>
    </body>
</html>  