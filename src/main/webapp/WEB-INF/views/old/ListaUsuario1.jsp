<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Users List</title>
	<link href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="generic-container">
		<%@include file="/template/header2.jsp" %>
		
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Lista de Usuários </span></div>
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Nome</th>
				        <th>Sobrenome</th>
				        <th>Email</th>
				        <th>Usuário</th>
				        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
				        	<th width="100"></th>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
				        	<th width="100"></th>
				        </sec:authorize>
				        
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${usuarios}" var="usuario">
					<tr>
						<td>${usuario.firstName}</td>
						<td>${usuario.lastName}</td>
						<td>${usuario.email}</td>
						<td>${usuario.ssoId}</td>
					    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<td><a href="<c:url value='/edita-usuario-${usuario.ssoId}' />" class="btn btn-success custom-width">editar</a></td>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
							<td><a href="<c:url value='/deleta-usuario-${usuario.ssoId}' />" onclick="return confirm('Tem certeza de que deseja excluir este item?');" class="btn btn-danger custom-width">deletar</a></td>
        				</sec:authorize>
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
		<sec:authorize access="hasRole('ADMIN')">
		 	<div class="well">
		 		<a href="<c:url value='/novo-usuario' />">Adicionar Usuário</a> <br />
		 		<a href="<c:url value='/novo-produto' />">Adicionar Produto</a>
		 	</div>
	 	</sec:authorize>
   	</div>
</body>
</html>