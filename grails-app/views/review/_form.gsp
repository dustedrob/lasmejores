<%@ page import="lasmejores.Review" %>



<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'administracion', 'error')} required">
	<label for="administracion">
		<g:message code="review.administracion.label" default="Administracion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="administracion" type="number" value="${reviewInstance.administracion}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'balance', 'error')} required">
	<label for="balance">
		<g:message code="review.balance.label" default="Balance" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="balance" type="number" value="${reviewInstance.balance}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'cons', 'error')} ">
	<label for="cons">
		<g:message code="review.cons.label" default="Cons" />
		
	</label>
	<g:textField name="cons" value="${reviewInstance?.cons}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'consejoAdministracion', 'error')} ">
	<label for="consejoAdministracion">
		<g:message code="review.consejoAdministracion.label" default="Consejo Administracion" />
		
	</label>
	<g:textField name="consejoAdministracion" value="${reviewInstance?.consejoAdministracion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'cultura', 'error')} required">
	<label for="cultura">
		<g:message code="review.cultura.label" default="Cultura" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cultura" type="number" value="${reviewInstance.cultura}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="review.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${lasmejores.Empresa.list()}" optionKey="id" required="" value="${reviewInstance?.empresa?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'formaContratacion', 'error')} required">
	<label for="formaContratacion">
		<g:message code="review.formaContratacion.label" default="Forma Contratacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="formaContratacion" type="number" value="${reviewInstance.formaContratacion}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'futuro', 'error')} required">
	<label for="futuro">
		<g:message code="review.futuro.label" default="Futuro" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="futuro" type="number" value="${reviewInstance.futuro}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'idReview', 'error')} required">
	<label for="idReview">
		<g:message code="review.idReview.label" default="Id Review" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="idReview" type="number" value="${reviewInstance.idReview}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'oportunidades', 'error')} required">
	<label for="oportunidades">
		<g:message code="review.oportunidades.label" default="Oportunidades" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="oportunidades" type="number" value="${reviewInstance.oportunidades}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'prestaciones', 'error')} required">
	<label for="prestaciones">
		<g:message code="review.prestaciones.label" default="Prestaciones" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="prestaciones" type="number" value="${reviewInstance.prestaciones}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'pros', 'error')} ">
	<label for="pros">
		<g:message code="review.pros.label" default="Pros" />
		
	</label>
	<g:textField name="pros" value="${reviewInstance?.pros}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'puesto', 'error')} ">
	<label for="puesto">
		<g:message code="review.puesto.label" default="Puesto" />
		
	</label>
	<g:textField name="puesto" value="${reviewInstance?.puesto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'rating', 'error')} required">
	<label for="rating">
		<g:message code="review.rating.label" default="Rating" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="rating" type="number" value="${reviewInstance.rating}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'recomendaria', 'error')} ">
	<label for="recomendaria">
		<g:message code="review.recomendaria.label" default="Recomendaria" />
		
	</label>
	<g:checkBox name="recomendaria" value="${reviewInstance?.recomendaria}" />
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'salario', 'error')} required">
	<label for="salario">
		<g:message code="review.salario.label" default="Salario" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salario" type="number" value="${reviewInstance.salario}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'salarioPuesto', 'error')} required">
	<label for="salarioPuesto">
		<g:message code="review.salarioPuesto.label" default="Salario Puesto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salarioPuesto" type="number" value="${reviewInstance.salarioPuesto}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="review.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${reviewInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'trabajoActual', 'error')} ">
	<label for="trabajoActual">
		<g:message code="review.trabajoActual.label" default="Trabajo Actual" />
		
	</label>
	<g:checkBox name="trabajoActual" value="${reviewInstance?.trabajoActual}" />
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'trabajoRemoto', 'error')} ">
	<label for="trabajoRemoto">
		<g:message code="review.trabajoRemoto.label" default="Trabajo Remoto" />
		
	</label>
	<g:checkBox name="trabajoRemoto" value="${reviewInstance?.trabajoRemoto}" />
</div>

<div class="fieldcontain ${hasErrors(bean: reviewInstance, field: 'ubicacion', 'error')} ">
	<label for="ubicacion">
		<g:message code="review.ubicacion.label" default="Ubicacion" />
		
	</label>
	<g:textField name="ubicacion" value="${reviewInstance?.ubicacion}"/>
</div>

