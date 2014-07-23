
<%@ page import="consulrima.Antiquity" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'antiquity.label', default: 'Antiquity')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-antiquity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-antiquity" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list antiquity">
			
				<g:if test="${antiquityInstance?.admissionDate}">
				<li class="fieldcontain">
					<span id="admissionDate-label" class="property-label"><g:message code="antiquity.admissionDate.label" default="Admission Date" /></span>
					
						<span class="property-value" aria-labelledby="admissionDate-label"><g:formatDate date="${antiquityInstance?.admissionDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${antiquityInstance?.dischargeDate}">
				<li class="fieldcontain">
					<span id="dischargeDate-label" class="property-label"><g:message code="antiquity.dischargeDate.label" default="Discharge Date" /></span>
					
						<span class="property-value" aria-labelledby="dischargeDate-label"><g:formatDate date="${antiquityInstance?.dischargeDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${antiquityInstance?.employee}">
				<li class="fieldcontain">
					<span id="employee-label" class="property-label"><g:message code="antiquity.employee.label" default="Employee" /></span>
					
						<span class="property-value" aria-labelledby="employee-label"><g:link controller="employee" action="show" id="${antiquityInstance?.employee?.id}">${antiquityInstance?.employee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${antiquityInstance?.observation}">
				<li class="fieldcontain">
					<span id="observation-label" class="property-label"><g:message code="antiquity.observation.label" default="Observation" /></span>
					
						<span class="property-value" aria-labelledby="observation-label"><g:fieldValue bean="${antiquityInstance}" field="observation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${antiquityInstance?.salary}">
				<li class="fieldcontain">
					<span id="salary-label" class="property-label"><g:message code="antiquity.salary.label" default="Salary" /></span>
					
						<span class="property-value" aria-labelledby="salary-label"><g:fieldValue bean="${antiquityInstance}" field="salary"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${antiquityInstance?.id}" />
					<g:link class="edit" action="edit" id="${antiquityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
