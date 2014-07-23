
<%@ page import="consulrima.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employee" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'employee.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="bornDate" title="${message(code: 'employee.bornDate.label', default: 'Born Date')}" />
					
						<g:sortableColumn property="cedula" title="${message(code: 'employee.cedula.label', default: 'Cedula')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'employee.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'employee.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'employee.lastName.label', default: 'Last Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "address")}</g:link></td>
					
						<td><g:formatDate date="${employeeInstance.bornDate}" /></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "cedula")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "lastName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employeeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
