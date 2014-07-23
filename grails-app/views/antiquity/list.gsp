
<%@ page import="consulrima.Antiquity" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'antiquity.label', default: 'Antiquity')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-antiquity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-antiquity" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="admissionDate" title="${message(code: 'antiquity.admissionDate.label', default: 'Admission Date')}" />
					
						<g:sortableColumn property="dischargeDate" title="${message(code: 'antiquity.dischargeDate.label', default: 'Discharge Date')}" />
					
						<th><g:message code="antiquity.employee.label" default="Employee" /></th>
					
						<g:sortableColumn property="observation" title="${message(code: 'antiquity.observation.label', default: 'Observation')}" />
					
						<g:sortableColumn property="salary" title="${message(code: 'antiquity.salary.label', default: 'Salary')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${antiquityInstanceList}" status="i" var="antiquityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${antiquityInstance.id}">${fieldValue(bean: antiquityInstance, field: "admissionDate")}</g:link></td>
					
						<td><g:formatDate date="${antiquityInstance.dischargeDate}" /></td>
					
						<td>${fieldValue(bean: antiquityInstance, field: "employee")}</td>
					
						<td>${fieldValue(bean: antiquityInstance, field: "observation")}</td>
					
						<td>${fieldValue(bean: antiquityInstance, field: "salary")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${antiquityInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
