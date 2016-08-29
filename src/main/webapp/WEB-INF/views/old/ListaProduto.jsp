<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Lista de produtos</title>
	<link href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="generic-container">
		<%@include file="/template/header.jsp" %>
		
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Lista de produtos </span></div>
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Código</th>
				        <th>Nome</th>
				        <th>Fabricante</th>
				        <th>Modelo</th>
				        <th>Descricao</th>
				        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
				        	<th width="100"></th>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
				        	<th width="100"></th>
				        </sec:authorize>
				        
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${produtos}" var="produto">
					<tr>
						<td>${produto.codigo}</td>
						<td>${produto.nome}</td>
						<td>${produto.fabricante}</td>
						<td>${produto.modelo}</td>
						<td>${produto.descricao}</td>
					    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<td><a href="<c:url value='/editar/${produto.id}' />" class="btn btn-success custom-width">editar</a></td>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
							<td><a href="<c:url value='/remover/${produto.id}' />" class="btn btn-danger custom-width" onclick="return confirm('Tem certeza de que deseja excluir este item?');">deletar</a>
        				</sec:authorize>
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
		<sec:authorize access="hasRole('ADMIN')">
		 	<div class="well">
		 		<a href="<c:url value='/novo-produto' />">Adicionar produto</a>
		 	</div>
	 	</sec:authorize>
   	</div>
</body>
</html>