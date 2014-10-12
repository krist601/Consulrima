
<%@ page import="user.SecAppUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'secAppUser.label', default: 'SecAppUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>


        <div id="list-employee" class="content scaffold-list" role="main">

            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

                        <g:hasErrors bean="${secAppUserInstance}">
                            <g:eachError bean="${secAppUserInstance}" var="error">
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
                        <h3>Usuarios</h3>
                    </header>
                    <div class="panel-body">
                        <div class="adv-table">
                            <table  class="display table table-bordered table-striped" id="dynamic-table">
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'secAppUser.username.label', default: 'Usuario')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'secAppUser.name.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'secAppUser.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="accountExpired" title="${message(code: 'secAppUser.accountExpired.label', default: 'Cuenta Vencida')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${secAppUserInstanceList}" status="i" var="secAppUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${secAppUserInstance.id}">${fieldValue(bean: secAppUserInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: secAppUserInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: secAppUserInstance, field: "email")}</td>
					
						<td><g:formatBoolean boolean="${secAppUserInstance.accountExpired}" /></td>
					
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
