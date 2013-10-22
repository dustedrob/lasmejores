
<%@ page import="lasmejores.Empresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empresa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="idEmpresa" title="${message(code: 'empresa.idEmpresa.label', default: 'Id Empresa')}" />
					
						<g:sortableColumn property="nombreEmpresa" title="${message(code: 'empresa.nombreEmpresa.label', default: 'Nombre Empresa')}" />
					
						<th><g:message code="empresa.sector.label" default="Sector" /></th>
					
						<g:sortableColumn property="ubicacion" title="${message(code: 'empresa.ubicacion.label', default: 'Ubicacion')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'empresa.url.label', default: 'Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empresaInstanceList}" status="i" var="empresaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empresaInstance.id}">${fieldValue(bean: empresaInstance, field: "idEmpresa")}</g:link></td>
					
						<td>${fieldValue(bean: empresaInstance, field: "nombreEmpresa")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "sector")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "ubicacion")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "url")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empresaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
