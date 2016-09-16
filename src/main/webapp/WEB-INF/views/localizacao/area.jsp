<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>

<title>CSP- Companhia Siderúrgica do Pecém</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="TCP - Tecnology control process">
<meta name="author" content="Roberto">
<link rel="shortcut icon" href="<c:url value='/resources/images/logo-icon-csp.jpg' />" />

<link type="text/css" href="<c:url value='/resources/css/styles.css' />" rel="stylesheet" />

</head>

<body class="animated-content infobar-overlay">

<!-- HEADER BEGIN -->
	<%@include file="/template/header.jsp" %>
<!-- HEADER END -->        

        <div id="wrapper">
            <div id="layout-static">
                
                <!-- MENU BEGIN -->
				<%@include file="/template/menu.jsp" %>
			<!-- MENU END -->
                
                <div class="static-content-wrapper">
                    <div class="static-content">
                        <div class="page-content">
                            <ol class="breadcrumb">
                                
<li><a href="<c:url value='/home' />">HOME</a></li>
<li><a href="<c:url value='/areas' />">ÁREA</a></li>
<li class="active">LISTA ÁREAS</li>

                            </ol>

                            <div class="container-fluid">
                                







 <div data-widget-group="group1">
	

	<div class="row">
		<div class="col-sm-12">
			<div class="panel panel-default" data-widget='{"draggable": "false"}'>
				<div class="panel-heading">
					<h2>Cadastro de Áreas</h2>
					<div class="panel-ctrls" data-actions-container="" data-action-collapse='{"target": ".panel-body, .panel-footer"}'></div>
				</div>
				<div class="panel-body">               
                
                
                
                
                
                
                
                <c:url var="addAction" value="/area/add" ></c:url>
					<form:form action="${addAction}" path="id" readonly="true" size="8" disabled="true" commandName="area" class="form-horizontal row-border" id="validate-form" data-parsley-validate="">
					
						<c:if test="${!empty area.nome}">
							<div class="form-group">
						    	<label class="col-sm-3 control-label" for="id">Código</label>
						    	<div class="col-sm-6">
						        	<form:input path="id" readonly="true" size="8" disabled="true" class="form-control" />
						        	<form:hidden path="id" />
						    	</div>
							</div>
						</c:if>
						
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="sigla">Sigla</label>
						    <div class="col-sm-6">
						        <form:input type="text" path="sigla" id="sigla" data-parsley-maxlength="6" placeholder="Pelo menos 6 caracteres" required="" class="form-control" />
						    </div>
						</div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="nome">Nome</label>
						    <div class="col-sm-6">
						        <form:input type="text" path="nome" id="nome" data-parsley-maxlength="6" placeholder="Pelo menos 6 caracteres" required="" class="form-control" />
						    </div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-sm-8 col-sm-offset-2">
							
							<c:if test="${!empty area.nome}">
								<input type="submit" value="Atualizar" class="btn-raised btn-success btn" /> <a href="<c:url value='/areas' />" class="btn-default btn">Cancelar </a>
							</c:if>
							<c:if test="${empty area.nome}">
								<input type="submit" value="Salvar" class="btn-raised btn-success btn" /> <input type="reset" class="btn-inverse btn" value="Limpar" /> <a href="<c:url value='/home' />" class="btn-default btn">Cancelar </a>
							</c:if>

						</div>
					</div>
				</div>	                    
	                </form:form>
                
                
  </div>
  </div>
  </div>
  </div>          








<div data-widget-group="group1">
	<div class="row">
	
	
	

	
	
	
	
	
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-body no-padding">
					<c:if test="${!empty areas}">
					<table class="table table-striped table-bordered">
						<thead>
		      		<tr>
				        <sec:authorize access="hasRole('ADMIN')">
				        	<th width="30px;">ID</th>
				        </sec:authorize>
				        <th>Sigla</th>
				        <th>Nome</th>
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${areas}" var="area">
					<tr>
						<sec:authorize access="hasRole('ADMIN')">
							<td width="30px;"><a href="<c:url value='/area/remover/${area.id}' />" class="btn-danger" onclick="return confirm('Tem certeza de que deseja excluir este item?');">${area.id}</a></td>
        				</sec:authorize>						
						<td>${area.sigla}</td>
						<td><a href="<c:url value='/area/editar/${area.id}' />" class="btn-success">${area.nome}</a></td>
					</tr>
				</c:forEach>
	    		</tbody>
					</table>
					</c:if>
				</div>
				<div class="panel-footer"></div>
			</div>
		</div>
	</div>
</div>

                            </div> <!-- .container-fluid -->
                        </div> <!-- #page-content -->
                    </div>
                    <!-- FOOTER BEGIN -->
						<%@include file="/template/footer.jsp" %>
					<!-- FOOER END -->
                </div>
            </div>
        </div>

        


    </body>
</html>