
<%@ page import="com.shri.spectranet.BillDetails" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'billDetails.label', default: 'BillDetails')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-billDetails" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-billDetails" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="billPeriodFrom" title="${message(code: 'billDetails.billPeriodFrom.label', default: 'Bill Period From')}" />
					
						<g:sortableColumn property="billNo" title="${message(code: 'billDetails.billNo.label', default: 'Bill No')}" />
					
						<g:sortableColumn property="billPeriodTo" title="${message(code: 'billDetails.billPeriodTo.label', default: 'Bill Period To')}" />
					
						<g:sortableColumn property="billDate" title="${message(code: 'billDetails.billDate.label', default: 'Bill Date')}" />
					
						<g:sortableColumn property="dueDate" title="${message(code: 'billDetails.dueDate.label', default: 'Due Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${billDetailsInstanceList}" status="i" var="billDetailsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${billDetailsInstance.id}"><g:formatDate format="MMM yyyy" date="${billDetailsInstance.billPeriodFrom}"/></g:link></td>
					
						<td>${fieldValue(bean: billDetailsInstance, field: "billNo")}</td>
					
						<td><g:formatDate date="${billDetailsInstance.billPeriodTo}" format="d, MMM yyyy" /></td>
					
						<td><g:formatDate date="${billDetailsInstance.billDate}" format="d, MMM yyyy"/></td>
					
						<td><g:formatDate date="${billDetailsInstance.dueDate}" format="d, MMM yyyy"/></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${billDetailsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
