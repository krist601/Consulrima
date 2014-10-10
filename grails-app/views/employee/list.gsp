<%@ page import="consulrima.Employee" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
    </head>
    <body>


        <div id="list-employee" class="content scaffold-list" role="main">

           
  <g:if test="${flash.message}">
                            <div class="alert alert-info fade in"><strong>${flash.message}</strong> </div>
                                </g:if>

                          
        </div>

        <div class="row">
            <div class="col-sm-12">
                <section class="panel">  
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
    </body>
</html>
