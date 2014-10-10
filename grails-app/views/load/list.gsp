
<%@ page import="consulrima.Load" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'load.label', default: 'Load')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-load" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-load" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="amount" title="${message(code: 'load.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'load.date.label', default: 'Date')}" />
					
						<th><g:message code="load.employee.label" default="Employee" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${loadInstanceList}" status="i" var="loadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${loadInstance.id}">${fieldValue(bean: loadInstance, field: "amount")}</g:link></td>
					
						<td><g:formatDate date="${loadInstance.date}" /></td>
					
						<td>${fieldValue(bean: loadInstance, field: "employee")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${loadInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
