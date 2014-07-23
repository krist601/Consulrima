
<%@ page import="consulrima.EmploymentData" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employmentData.label', default: 'EmploymentData')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-employmentData" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-employmentData" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employmentData">
			
				<g:if test="${employmentDataInstance?.charge}">
				<li class="fieldcontain">
					<span id="charge-label" class="property-label"><g:message code="employmentData.charge.label" default="Charge" /></span>
					
						<span class="property-value" aria-labelledby="charge-label"><g:fieldValue bean="${employmentDataInstance}" field="charge"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.client}">
				<li class="fieldcontain">
					<span id="client-label" class="property-label"><g:message code="employmentData.client.label" default="Client" /></span>
					
						<span class="property-value" aria-labelledby="client-label"><g:fieldValue bean="${employmentDataInstance}" field="client"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.employee}">
				<li class="fieldcontain">
					<span id="employee-label" class="property-label"><g:message code="employmentData.employee.label" default="Employee" /></span>
					
						<span class="property-value" aria-labelledby="employee-label"><g:link controller="employee" action="show" id="${employmentDataInstance?.employee?.id}">${employmentDataInstance?.employee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.extra}">
				<li class="fieldcontain">
					<span id="extra-label" class="property-label"><g:message code="employmentData.extra.label" default="Extra" /></span>
					
						<span class="property-value" aria-labelledby="extra-label"><g:fieldValue bean="${employmentDataInstance}" field="extra"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.firstExtraEndowmentAmount}">
				<li class="fieldcontain">
					<span id="firstExtraEndowmentAmount-label" class="property-label"><g:message code="employmentData.firstExtraEndowmentAmount.label" default="First Extra Endowment Amount" /></span>
					
						<span class="property-value" aria-labelledby="firstExtraEndowmentAmount-label"><g:formatDate date="${employmentDataInstance?.firstExtraEndowmentAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.firstExtraEndowmentDate}">
				<li class="fieldcontain">
					<span id="firstExtraEndowmentDate-label" class="property-label"><g:message code="employmentData.firstExtraEndowmentDate.label" default="First Extra Endowment Date" /></span>
					
						<span class="property-value" aria-labelledby="firstExtraEndowmentDate-label"><g:formatDate date="${employmentDataInstance?.firstExtraEndowmentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.firstPantEndowmentAmount}">
				<li class="fieldcontain">
					<span id="firstPantEndowmentAmount-label" class="property-label"><g:message code="employmentData.firstPantEndowmentAmount.label" default="First Pant Endowment Amount" /></span>
					
						<span class="property-value" aria-labelledby="firstPantEndowmentAmount-label"><g:formatDate date="${employmentDataInstance?.firstPantEndowmentAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.firstPantEndowmentDate}">
				<li class="fieldcontain">
					<span id="firstPantEndowmentDate-label" class="property-label"><g:message code="employmentData.firstPantEndowmentDate.label" default="First Pant Endowment Date" /></span>
					
						<span class="property-value" aria-labelledby="firstPantEndowmentDate-label"><g:formatDate date="${employmentDataInstance?.firstPantEndowmentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.firstShirtEndowmentAmount}">
				<li class="fieldcontain">
					<span id="firstShirtEndowmentAmount-label" class="property-label"><g:message code="employmentData.firstShirtEndowmentAmount.label" default="First Shirt Endowment Amount" /></span>
					
						<span class="property-value" aria-labelledby="firstShirtEndowmentAmount-label"><g:formatDate date="${employmentDataInstance?.firstShirtEndowmentAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.firstShirtEndowmentDate}">
				<li class="fieldcontain">
					<span id="firstShirtEndowmentDate-label" class="property-label"><g:message code="employmentData.firstShirtEndowmentDate.label" default="First Shirt Endowment Date" /></span>
					
						<span class="property-value" aria-labelledby="firstShirtEndowmentDate-label"><g:formatDate date="${employmentDataInstance?.firstShirtEndowmentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.firstShoesEndowmentAmount}">
				<li class="fieldcontain">
					<span id="firstShoesEndowmentAmount-label" class="property-label"><g:message code="employmentData.firstShoesEndowmentAmount.label" default="First Shoes Endowment Amount" /></span>
					
						<span class="property-value" aria-labelledby="firstShoesEndowmentAmount-label"><g:formatDate date="${employmentDataInstance?.firstShoesEndowmentAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.firstShoesEndowmentDate}">
				<li class="fieldcontain">
					<span id="firstShoesEndowmentDate-label" class="property-label"><g:message code="employmentData.firstShoesEndowmentDate.label" default="First Shoes Endowment Date" /></span>
					
						<span class="property-value" aria-labelledby="firstShoesEndowmentDate-label"><g:formatDate date="${employmentDataInstance?.firstShoesEndowmentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.observation}">
				<li class="fieldcontain">
					<span id="observation-label" class="property-label"><g:message code="employmentData.observation.label" default="Observation" /></span>
					
						<span class="property-value" aria-labelledby="observation-label"><g:fieldValue bean="${employmentDataInstance}" field="observation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.pantSize}">
				<li class="fieldcontain">
					<span id="pantSize-label" class="property-label"><g:message code="employmentData.pantSize.label" default="Pant Size" /></span>
					
						<span class="property-value" aria-labelledby="pantSize-label"><g:fieldValue bean="${employmentDataInstance}" field="pantSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.secondExtraEndowmentDate}">
				<li class="fieldcontain">
					<span id="secondExtraEndowmentDate-label" class="property-label"><g:message code="employmentData.secondExtraEndowmentDate.label" default="Second Extra Endowment Date" /></span>
					
						<span class="property-value" aria-labelledby="secondExtraEndowmentDate-label"><g:formatDate date="${employmentDataInstance?.secondExtraEndowmentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.secondExtratEndowmentAmount}">
				<li class="fieldcontain">
					<span id="secondExtratEndowmentAmount-label" class="property-label"><g:message code="employmentData.secondExtratEndowmentAmount.label" default="Second Extrat Endowment Amount" /></span>
					
						<span class="property-value" aria-labelledby="secondExtratEndowmentAmount-label"><g:formatDate date="${employmentDataInstance?.secondExtratEndowmentAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.secondPantEndowmentAmount}">
				<li class="fieldcontain">
					<span id="secondPantEndowmentAmount-label" class="property-label"><g:message code="employmentData.secondPantEndowmentAmount.label" default="Second Pant Endowment Amount" /></span>
					
						<span class="property-value" aria-labelledby="secondPantEndowmentAmount-label"><g:formatDate date="${employmentDataInstance?.secondPantEndowmentAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.secondPantEndowmentDate}">
				<li class="fieldcontain">
					<span id="secondPantEndowmentDate-label" class="property-label"><g:message code="employmentData.secondPantEndowmentDate.label" default="Second Pant Endowment Date" /></span>
					
						<span class="property-value" aria-labelledby="secondPantEndowmentDate-label"><g:formatDate date="${employmentDataInstance?.secondPantEndowmentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.secondShirtEndowmentAmount}">
				<li class="fieldcontain">
					<span id="secondShirtEndowmentAmount-label" class="property-label"><g:message code="employmentData.secondShirtEndowmentAmount.label" default="Second Shirt Endowment Amount" /></span>
					
						<span class="property-value" aria-labelledby="secondShirtEndowmentAmount-label"><g:formatDate date="${employmentDataInstance?.secondShirtEndowmentAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.secondShirtEndowmentDate}">
				<li class="fieldcontain">
					<span id="secondShirtEndowmentDate-label" class="property-label"><g:message code="employmentData.secondShirtEndowmentDate.label" default="Second Shirt Endowment Date" /></span>
					
						<span class="property-value" aria-labelledby="secondShirtEndowmentDate-label"><g:formatDate date="${employmentDataInstance?.secondShirtEndowmentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.secondShoestEndowmentAmount}">
				<li class="fieldcontain">
					<span id="secondShoestEndowmentAmount-label" class="property-label"><g:message code="employmentData.secondShoestEndowmentAmount.label" default="Second Shoest Endowment Amount" /></span>
					
						<span class="property-value" aria-labelledby="secondShoestEndowmentAmount-label"><g:formatDate date="${employmentDataInstance?.secondShoestEndowmentAmount}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.secondShoestEndowmentDate}">
				<li class="fieldcontain">
					<span id="secondShoestEndowmentDate-label" class="property-label"><g:message code="employmentData.secondShoestEndowmentDate.label" default="Second Shoest Endowment Date" /></span>
					
						<span class="property-value" aria-labelledby="secondShoestEndowmentDate-label"><g:formatDate date="${employmentDataInstance?.secondShoestEndowmentDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.shirtSize}">
				<li class="fieldcontain">
					<span id="shirtSize-label" class="property-label"><g:message code="employmentData.shirtSize.label" default="Shirt Size" /></span>
					
						<span class="property-value" aria-labelledby="shirtSize-label"><g:fieldValue bean="${employmentDataInstance}" field="shirtSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employmentDataInstance?.shoesSize}">
				<li class="fieldcontain">
					<span id="shoesSize-label" class="property-label"><g:message code="employmentData.shoesSize.label" default="Shoes Size" /></span>
					
						<span class="property-value" aria-labelledby="shoesSize-label"><g:fieldValue bean="${employmentDataInstance}" field="shoesSize"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${employmentDataInstance?.id}" />
					<g:link class="edit" action="edit" id="${employmentDataInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
