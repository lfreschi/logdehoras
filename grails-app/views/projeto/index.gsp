<%@ page import="ldh.Projeto" %>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projeto.label', default: 'Projeto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
  </head>

	<body>

    <section class="coss-page-header">
      <div class="row">
        <div class="col-xs-6">
          <div class="page-header">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
          </div>
        </div>
      
        <div class="col-xs-6">
          <form class="form-inline pull-right" role="form">
          <g:link action="create" class="btn btn-default">
            <span class="glyphicon glyphicon-plus"></span>
            Criar
          </g:link>
            <div class="form-group">
              <input type="search" class="form-control" id="search" placeholder="Filtar">
            </div>
            <button type="submit" class="btn btn-default">Filtrar</button>
          </form>
        </div>
      </div>
    </section>

		<div id="list-projeto" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'projeto.nome.label', default: 'Nome')}" style="width: 220px;" />
					
						<g:sortableColumn property="dataInicio" title="${message(code: 'projeto.dataInicio.label', default: 'Data Inicio')}" style="width: 220px;" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'projeto.descricao.label', default: 'Descricao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projetoInstanceList}" status="i" var="projetoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projetoInstance.id}">${fieldValue(bean: projetoInstance, field: "nome")}</g:link></td>
					
						<td><g:formatDate date="${projetoInstance.dataInicio}" /></td>
					
						<td>${fieldValue(bean: projetoInstance, field: "descricao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projetoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
