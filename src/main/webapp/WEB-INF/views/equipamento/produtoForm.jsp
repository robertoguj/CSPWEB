<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cadastro de Produtos</title>
	<link href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
 	<div class="generic-container">
		<%@include file="/template/header.jsp" %>

		<div class="well lead">Cadastro de Produtos</div>
		
		<c:url var="addAction" value="/produto/add" ></c:url>
		
	 	<form:form action="${addAction}" commandName="produto" class="form-horizontal">

			<form:input type="hidden" path="id" id="id"/>
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="nome">Nome</label>
					<div class="col-md-7">
						<form:input type="text" path="nome" id="nome" class="form-control input-sm"/>
						<div class="has-error">
							<form:errors path="nome" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="fabricante">Fabricante</label>
					<div class="col-md-7">
						<form:input type="text" path="fabricante" id="fabricante" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="fabricante" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="modelo">Modelo</label>
					<div class="col-md-7">
						<form:input type="text" path="modelo" id="modelo" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="modelo" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="codigo">Código do produto</label>
					<div class="col-md-7">
						<form:input type="text" path="codigo" id="codigo" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="codigo" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="descricao">Descricao</label>
					<div class="col-md-7">
						<form:input type="text" path="descricao" id="descricao" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="descricao" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-actions floatRight">
					<c:if test="${!empty produto.nome}">
						<input type="submit" value="Atualizar" class="btn btn-primary btn-sm"/> <a href="<c:url value='/lista-produto' />"> </a>
					</c:if>
					<c:if test="${empty produto.nome}">
						<input type="submit" value="Salvar" class="btn btn-primary btn-sm"/> <input type="reset" class="btn btn-primary btn-sm" value="Limpar" /> <a href="<c:url value='/lista-produto' />"> </a>
					</c:if>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>