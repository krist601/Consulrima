
<%@ page import="consulrima.Phone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'phone.label', default: 'Phone')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-phone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-phone" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="areaCode" title="${message(code: 'phone.areaCode.label', default: 'Area Code')}" />
					
						<th><g:message code="phone.employee.label" default="Employee" /></th>
					
						<g:sortableColumn property="phoneNumber" title="${message(code: 'phone.phoneNumber.label', default: 'Phone Number')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'phone.type.label', default: 'Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${phoneInstanceList}" status="i" var="phoneInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${phoneInstance.id}">${fieldValue(bean: phoneInstance, field: "areaCode")}</g:link></td>
					
						<td>${fieldValue(bean: phoneInstance, field: "employee")}</td>
					
						<td>${fieldValue(bean: phoneInstance, field: "phoneNumber")}</td>
					
						<td>${fieldValue(bean: phoneInstance, field: "type")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${phoneInstanceTotal}" />
			</div>
		</div>
        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>
            
	</body>
</html>
