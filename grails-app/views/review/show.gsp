
<%@ page import="lasmejores.Review" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'review.label', default: 'Review')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-review" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-review" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list review">
			
				<g:if test="${reviewInstance?.administracion}">
				<li class="fieldcontain">
					<span id="administracion-label" class="property-label"><g:message code="review.administracion.label" default="Administracion" /></span>
					
						<span class="property-value" aria-labelledby="administracion-label"><g:fieldValue bean="${reviewInstance}" field="administracion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.balance}">
				<li class="fieldcontain">
					<span id="balance-label" class="property-label"><g:message code="review.balance.label" default="Balance" /></span>
					
						<span class="property-value" aria-labelledby="balance-label"><g:fieldValue bean="${reviewInstance}" field="balance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.cons}">
				<li class="fieldcontain">
					<span id="cons-label" class="property-label"><g:message code="review.cons.label" default="Cons" /></span>
					
						<span class="property-value" aria-labelledby="cons-label"><g:fieldValue bean="${reviewInstance}" field="cons"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.consejoAdministracion}">
				<li class="fieldcontain">
					<span id="consejoAdministracion-label" class="property-label"><g:message code="review.consejoAdministracion.label" default="Consejo Administracion" /></span>
					
						<span class="property-value" aria-labelledby="consejoAdministracion-label"><g:fieldValue bean="${reviewInstance}" field="consejoAdministracion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.cultura}">
				<li class="fieldcontain">
					<span id="cultura-label" class="property-label"><g:message code="review.cultura.label" default="Cultura" /></span>
					
						<span class="property-value" aria-labelledby="cultura-label"><g:fieldValue bean="${reviewInstance}" field="cultura"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.empresa}">
				<li class="fieldcontain">
					<span id="empresa-label" class="property-label"><g:message code="review.empresa.label" default="Empresa" /></span>
					
						<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${reviewInstance?.empresa?.id}">${reviewInstance?.empresa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.formaContratacion}">
				<li class="fieldcontain">
					<span id="formaContratacion-label" class="property-label"><g:message code="review.formaContratacion.label" default="Forma Contratacion" /></span>
					
						<span class="property-value" aria-labelledby="formaContratacion-label"><g:fieldValue bean="${reviewInstance}" field="formaContratacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.futuro}">
				<li class="fieldcontain">
					<span id="futuro-label" class="property-label"><g:message code="review.futuro.label" default="Futuro" /></span>
					
						<span class="property-value" aria-labelledby="futuro-label"><g:fieldValue bean="${reviewInstance}" field="futuro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.idReview}">
				<li class="fieldcontain">
					<span id="idReview-label" class="property-label"><g:message code="review.idReview.label" default="Id Review" /></span>
					
						<span class="property-value" aria-labelledby="idReview-label"><g:fieldValue bean="${reviewInstance}" field="idReview"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.oportunidades}">
				<li class="fieldcontain">
					<span id="oportunidades-label" class="property-label"><g:message code="review.oportunidades.label" default="Oportunidades" /></span>
					
						<span class="property-value" aria-labelledby="oportunidades-label"><g:fieldValue bean="${reviewInstance}" field="oportunidades"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.prestaciones}">
				<li class="fieldcontain">
					<span id="prestaciones-label" class="property-label"><g:message code="review.prestaciones.label" default="Prestaciones" /></span>
					
						<span class="property-value" aria-labelledby="prestaciones-label"><g:fieldValue bean="${reviewInstance}" field="prestaciones"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.pros}">
				<li class="fieldcontain">
					<span id="pros-label" class="property-label"><g:message code="review.pros.label" default="Pros" /></span>
					
						<span class="property-value" aria-labelledby="pros-label"><g:fieldValue bean="${reviewInstance}" field="pros"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.puesto}">
				<li class="fieldcontain">
					<span id="puesto-label" class="property-label"><g:message code="review.puesto.label" default="Puesto" /></span>
					
						<span class="property-value" aria-labelledby="puesto-label"><g:fieldValue bean="${reviewInstance}" field="puesto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="review.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${reviewInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.recomendaria}">
				<li class="fieldcontain">
					<span id="recomendaria-label" class="property-label"><g:message code="review.recomendaria.label" default="Recomendaria" /></span>
					
						<span class="property-value" aria-labelledby="recomendaria-label"><g:formatBoolean boolean="${reviewInstance?.recomendaria}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.salario}">
				<li class="fieldcontain">
					<span id="salario-label" class="property-label"><g:message code="review.salario.label" default="Salario" /></span>
					
						<span class="property-value" aria-labelledby="salario-label"><g:fieldValue bean="${reviewInstance}" field="salario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.salarioPuesto}">
				<li class="fieldcontain">
					<span id="salarioPuesto-label" class="property-label"><g:message code="review.salarioPuesto.label" default="Salario Puesto" /></span>
					
						<span class="property-value" aria-labelledby="salarioPuesto-label"><g:fieldValue bean="${reviewInstance}" field="salarioPuesto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="review.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${reviewInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.trabajoActual}">
				<li class="fieldcontain">
					<span id="trabajoActual-label" class="property-label"><g:message code="review.trabajoActual.label" default="Trabajo Actual" /></span>
					
						<span class="property-value" aria-labelledby="trabajoActual-label"><g:formatBoolean boolean="${reviewInstance?.trabajoActual}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.trabajoRemoto}">
				<li class="fieldcontain">
					<span id="trabajoRemoto-label" class="property-label"><g:message code="review.trabajoRemoto.label" default="Trabajo Remoto" /></span>
					
						<span class="property-value" aria-labelledby="trabajoRemoto-label"><g:formatBoolean boolean="${reviewInstance?.trabajoRemoto}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reviewInstance?.ubicacion}">
				<li class="fieldcontain">
					<span id="ubicacion-label" class="property-label"><g:message code="review.ubicacion.label" default="Ubicacion" /></span>
					
						<span class="property-value" aria-labelledby="ubicacion-label"><g:fieldValue bean="${reviewInstance}" field="ubicacion"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:reviewInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${reviewInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
