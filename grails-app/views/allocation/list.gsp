
<%@ page import="consulrima.Allocation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'allocation.label', default: 'Allocation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-allocation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-allocation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="allocationDate" title="${message(code: 'allocation.allocationDate.label', default: 'Allocation Date')}" />
					
						<g:sortableColumn property="allocationType" title="${message(code: 'allocation.allocationType.label', default: 'Allocation Type')}" />
					
						<g:sortableColumn property="amount" title="${message(code: 'allocation.amount.label', default: 'Amount')}" />
					
						<th><g:message code="allocation.employee.label" default="Employee" /></th>
					
						<g:sortableColumn property="size" title="${message(code: 'allocation.size.label', default: 'Size')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${allocationInstanceList}" status="i" var="allocationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${allocationInstance.id}">${fieldValue(bean: allocationInstance, field: "allocationDate")}</g:link></td>
					
						<td>${fieldValue(bean: allocationInstance, field: "allocationType")}</td>
					
						<td>${fieldValue(bean: allocationInstance, field: "amount")}</td>
					
						<td>${fieldValue(bean: allocationInstance, field: "employee")}</td>
					
						<td>${fieldValue(bean: allocationInstance, field: "size")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${allocationInstanceTotal}" />
			</div>
		</div>
        <div  style="text-align: left;float:left;"><font size="1">&copy; 2014. Consulrima Servicios 2020 CA. Todos los derechos reservados.</font></div>
        <div style="text-align: right;"><font size="1">Desarrollado por: <a href="http://www.fasterik.com.ve/">Kristian Cortés y Keyla Hernández</a></font></div>
            
	</body>
</html>
