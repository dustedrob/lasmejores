
<%@ page import="lasmejores.Review" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-review" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="administracion" title="${message(code: 'review.administracion.label', default: 'Administracion')}" />
					
						<g:sortableColumn property="balance" title="${message(code: 'review.balance.label', default: 'Balance')}" />
					
						<g:sortableColumn property="cons" title="${message(code: 'review.cons.label', default: 'Cons')}" />
					
						<g:sortableColumn property="consejoAdministracion" title="${message(code: 'review.consejoAdministracion.label', default: 'Consejo Administracion')}" />
					
						<g:sortableColumn property="cultura" title="${message(code: 'review.cultura.label', default: 'Cultura')}" />
					
						<th><g:message code="review.empresa.label" default="Empresa" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reviewInstanceList}" status="i" var="reviewInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reviewInstance.id}">${fieldValue(bean: reviewInstance, field: "administracion")}</g:link></td>
					
						<td>${fieldValue(bean: reviewInstance, field: "balance")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "cons")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "consejoAdministracion")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "cultura")}</td>
					
						<td>${fieldValue(bean: reviewInstance, field: "empresa")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reviewInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
