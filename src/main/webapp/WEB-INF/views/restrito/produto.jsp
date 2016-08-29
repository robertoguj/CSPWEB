<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Person Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Adicionar Produto
</h1>

<c:url var="addAction" value="/produto/add" ></c:url>

<form:form action="${addAction}" commandName="produto">
<table>
	<c:if test="${!empty produto.nome}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="nome">
				<spring:message text="nome"/>
			</form:label>
		</td>
		<td>
			<form:input path="nome" />
		</td>
		<td>
			<form:errors path="nome" class="help-inline"/>
		</td>

	</tr>
	<tr>
		<td>
			<form:label path="fabricante">
				<spring:message text="fabricante"/>
			</form:label>
		</td>
		<td>
			<form:input path="fabricante" />
		</td>
		<td>
			<form:errors path="fabricante" class="help-inline"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="modelo">
				<spring:message text="modelo"/>
			</form:label>
		</td>
		<td>
			<form:input path="modelo" />
		</td>
		<td>
			<form:errors path="modelo" class="help-inline"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="codigo">
				<spring:message text="codigo"/>
			</form:label>
		</td>
		<td>
			<form:input path="codigo" />
		</td>
		<td>
			<form:errors path="codigo" class="help-inline"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="descricao">
				<spring:message text="descricao"/>
			</form:label>
		</td>
		<td>
			<form:input path="descricao" />
		</td>
		<td>
			<form:errors path="descricao" class="help-inline"/>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty produto.nome}">
				<input type="submit"
					value="<spring:message text="Atualizar"/>" />
			</c:if>
			<c:if test="${empty produto.nome}">
				<input type="submit"
					value="<spring:message text="Salvar"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Lista de produtos</h3>
<c:if test="${!empty listaProdutos}">
	<table class="tg">
	<tr>
		<th width="20">Produto ID</th>
		<th width="60">Código do produto</th>
		<th width="120">Nome do produto</th>
		<th width="120">Fabricante</th>
		<th width="100">Modelo</th>
		<th width="250">Decricao</th>
	</tr>
	<c:forEach items="${listaProdutos}" var="produto">
		<tr>
			<td>${produto.id}</td>
			<td>${produto.codigo}</td>
			<td>${produto.nome}</td>
			<td>${produto.fabricante}</td>
			<td>${produto.modelo}</td>
			<td>${produto.descricao}</td>
			<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
				<td><a href="<c:url value='/editarProduto/${produto.id}' />" >Editar</a></td>
			</sec:authorize>
			<sec:authorize access="hasRole('ADMIN')">
				<td><a href="<c:url value='/removerProduto/${produto.id}' />" onclick="return confirm('Tem certeza de que deseja excluir este item?');" >Deletar</a></td>
			</sec:authorize>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
