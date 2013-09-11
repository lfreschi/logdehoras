<%@ page import="ldh.Projeto" %>



<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="projeto.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${projetoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'dataInicio', 'error')} required">
	<label for="dataInicio">
		<g:message code="projeto.dataInicio.label" default="Data Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataInicio" precision="day"  value="${projetoInstance?.dataInicio}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projetoInstance, field: 'descricao', 'error')} ">
	<label for="descricao">
		<g:message code="projeto.descricao.label" default="Descricao" />
		
	</label>
	<g:textField name="descricao" value="${projetoInstance?.descricao}"/>
</div>

