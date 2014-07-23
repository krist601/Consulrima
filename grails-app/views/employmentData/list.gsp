
<%@ page import="consulrima.EmploymentData" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employmentData.label', default: 'EmploymentData')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employmentData" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employmentData" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="charge" title="${message(code: 'employmentData.charge.label', default: 'Charge')}" />
					
						<g:sortableColumn property="client" title="${message(code: 'employmentData.client.label', default: 'Client')}" />
					
						<th><g:message code="employmentData.employee.label" default="Employee" /></th>
					
						<g:sortableColumn property="firstPantEndowmentAmount" title="${message(code: 'employmentData.firstPantEndowmentAmount.label', default: 'First Pant Endowment Amount')}" />
					
						<g:sortableColumn property="firstPantEndowmentDate" title="${message(code: 'employmentData.firstPantEndowmentDate.label', default: 'First Pant Endowment Date')}" />
					
						<g:sortableColumn property="firstShirtEndowmentAmount" title="${message(code: 'employmentData.firstShirtEndowmentAmount.label', default: 'First Shirt Endowment Amount')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employmentDataInstanceList}" status="i" var="employmentDataInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employmentDataInstance.id}">${fieldValue(bean: employmentDataInstance, field: "charge")}</g:link></td>
					
						<td>${fieldValue(bean: employmentDataInstance, field: "client")}</td>
					
						<td>${fieldValue(bean: employmentDataInstance, field: "employee")}</td>
					
						<td><g:formatDate date="${employmentDataInstance.firstPantEndowmentAmount}" /></td>
					
						<td><g:formatDate date="${employmentDataInstance.firstPantEndowmentDate}" /></td>
					
						<td><g:formatDate date="${employmentDataInstance.firstShirtEndowmentAmount}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employmentDataInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
