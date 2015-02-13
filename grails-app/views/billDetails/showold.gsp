
<%@ page import="com.shri.spectranet.BillDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'billDetails.label', default: 'BillDetails')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-billDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-billDetails" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list billDetails">
			
				<g:if test="${billDetailsInstance?.billPeriodFrom}">
				<li class="fieldcontain">
					<span id="billPeriodFrom-label" class="property-label"><g:message code="billDetails.billPeriodFrom.label" default="Bill Period From" /></span>
					
						<span class="property-value" aria-labelledby="billPeriodFrom-label"><g:formatDate date="${billDetailsInstance?.billPeriodFrom}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${billDetailsInstance?.billNo}">
				<li class="fieldcontain">
					<span id="billNo-label" class="property-label"><g:message code="billDetails.billNo.label" default="Bill No" /></span>
					
						<span class="property-value" aria-labelledby="billNo-label"><g:fieldValue bean="${billDetailsInstance}" field="billNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billDetailsInstance?.billPeriodTo}">
				<li class="fieldcontain">
					<span id="billPeriodTo-label" class="property-label"><g:message code="billDetails.billPeriodTo.label" default="Bill Period To" /></span>
					
						<span class="property-value" aria-labelledby="billPeriodTo-label"><g:formatDate date="${billDetailsInstance?.billPeriodTo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${billDetailsInstance?.billDate}">
				<li class="fieldcontain">
					<span id="billDate-label" class="property-label"><g:message code="billDetails.billDate.label" default="Bill Date" /></span>
					
						<span class="property-value" aria-labelledby="billDate-label"><g:formatDate date="${billDetailsInstance?.billDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${billDetailsInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="billDetails.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${billDetailsInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:billDetailsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${billDetailsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
