<%@ page import="lasmejores.Empresa" %>



<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'idEmpresa', 'error')} required">
	<label for="idEmpresa">
		<g:message code="empresa.idEmpresa.label" default="Id Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idEmpresa" type="number" value="${empresaInstance.idEmpresa}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'nombreEmpresa', 'error')} ">
	<label for="nombreEmpresa">
		<g:message code="empresa.nombreEmpresa.label" default="Nombre Empresa" />
		
	</label>
	<g:textField name="nombreEmpresa" value="${empresaInstance?.nombreEmpresa}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'reviews', 'error')} ">
	<label for="reviews">
		<g:message code="empresa.reviews.label" default="Reviews" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empresaInstance?.reviews?}" var="r">
    <li><g:link controller="review" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="review" action="create" params="['empresa.id': empresaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'review.label', default: 'Review')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'sector', 'error')} required">
	<label for="sector">
		<g:message code="empresa.sector.label" default="Sector" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sector" name="sector.id" from="${lasmejores.Sector.list()}" optionKey="id" required="" value="${empresaInstance?.sector?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'ubicacion', 'error')} ">
	<label for="ubicacion">
		<g:message code="empresa.ubicacion.label" default="Ubicacion" />
		
	</label>
	<g:textField name="ubicacion" value="${empresaInstance?.ubicacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="empresa.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${empresaInstance?.url}"/>
</div>

