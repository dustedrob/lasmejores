<%@ page import="lasmejores.Sector" %>



<div class="fieldcontain ${hasErrors(bean: sectorInstance, field: 'empresas', 'error')} ">
	<label for="empresas">
		<g:message code="sector.empresas.label" default="Empresas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${sectorInstance?.empresas?}" var="e">
    <li><g:link controller="empresa" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="empresa" action="create" params="['sector.id': sectorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'empresa.label', default: 'Empresa')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: sectorInstance, field: 'idSector', 'error')} required">
	<label for="idSector">
		<g:message code="sector.idSector.label" default="Id Sector" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idSector" type="number" value="${sectorInstance.idSector}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: sectorInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="sector.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${sectorInstance?.nombre}"/>
</div>

