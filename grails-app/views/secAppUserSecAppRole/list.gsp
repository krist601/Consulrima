
<%@ page import="user.SecAppUserSecAppRole" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'secAppUserSecAppRole.label', default: 'SecAppUserSecAppRole')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div id="list-employee" class="content scaffold-list" role="main">

            <g:if test="${flash.message}">
                <div class="alert alert-block alert-danger fade in">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Error!</strong> ${flash.message}
                    </div>
            </g:if>

            <g:hasErrors bean="${secAppUserSecAppRoleInstance}">
                <g:eachError bean="${secAppUserSecAppRoleInstance}" var="error">
                    <div class="alert alert-block alert-danger fade in">
                        <button data-dismiss="alert" class="close close-sm" type="button">
                            <i class="fa fa-times"></i>
                        </button>
                        <strong>Error!</strong> <g:message error="${error}"/>
                    </div>
                </g:eachError>
            </g:hasErrors>

        </div>

        <div class="row">
            <div class="col-sm-12">
                <section class="panel">
                    <header class="panel-heading">
                        <h3>Rol-Usuario</h3>
                    </header>
                    <div class="panel-body">
                        <div class="adv-table">
                            <table  class="display table table-bordered table-striped" id="dynamic-table">
                                <thead>
                                    <tr>

                                        <th><g:message code="secAppUserSecAppRole.secAppRole.label" default="Rol" /></th>

                                        <th><g:message code="secAppUserSecAppRole.secAppUser.label" default="Usuario" /></th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <g:each in="${secAppUserSecAppRoleInstanceList}" status="i" var="secAppUserSecAppRoleInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                            <td><g:link action="show" id="${secAppUserSecAppRoleInstance.id}">${fieldValue(bean: secAppUserSecAppRoleInstance, field: "secAppRole")}</g:link></td>

                                            <td>${fieldValue(bean: secAppUserSecAppRoleInstance, field: "secAppUser")}</td>

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

