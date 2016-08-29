<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
								<li><a href="<c:url value='/inicio' />">HOME</a></li>
								<li><a href="#">USUÁRIO</a></li>
                            </ol>
                            
                            <div class="container-fluid">
                                
<div data-widget-group="group1">
	

	<div class="row">
		<div class="col-sm-12">
			<div class="panel panel-default" data-widget='{"draggable": "false"}'>
				<div class="panel-heading">
					<h2>Cadastro de usuários</h2>
					<div class="panel-ctrls" data-actions-container="" data-action-collapse='{"target": ".panel-body, .panel-footer"}'></div>
				</div>
				<div class="panel-body">
					<form:form method="POST" modelAttribute="usuario" class="form-horizontal row-border" id="validate-form" data-parsley-validate="">
					<form:input type="hidden" path="id" id="id"/>
	                    <div class="form-group">
	                        <label class="col-sm-3 control-label" for="firstName">Nome</label>
	                        <div class="col-sm-6">
	                            <form:input type="text" path="firstName" id="firstName" placeholder="Campo requerido" requerid="" class="form-control" />
	                            <div class="has-error">
									<form:errors path="firstName" class="help-inline"/>
								</div>
	                        </div>
	                    </div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="lastName">Sobrenome</label>
						    <div class="col-sm-6">
						        <form:input type="text" path="lastName" id="lastName" data-parsley-minlength="6" placeholder="Pelo menos 6 caracteres" requerid="" class="form-control" />
						        <div class="has-error">
									<form:errors path="lastName" class="help-inline"/>
								</div>
						    </div>
						</div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="ssoId">Usuário</label>
						    <div class="col-sm-6">
						    	<c:choose>
									<c:when test="${edit}">
						        		<form:input type="text" path="ssoId" id="ssoId" data-parsley-maxlength="6" placeholder="No máximo 6 caracteres" requerid="" class="form-control" disabled="true"/>
						        	</c:when>
									<c:otherwise>
										<form:input type="text" path="ssoId" id="ssoId" data-parsley-maxlength="6" placeholder="No máximo 6 caracteres" requerid="" class="form-control" />
										<div class="has-error">
											<form:errors path="ssoId" class="help-inline"/>
										</div>
									</c:otherwise>
								</c:choose>
						    </div>
						</div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="password">Senha</label>
						    <div class="col-sm-6">
						        <form:input type="password" path="password" id="password" data-parsley-range="[5,10]" placeholder="Entre 5 e 10 caracteres" requerid="" class="form-control" />
						        <div class="has-error">
									<form:errors path="password" class="help-inline"/>
								</div>
						    </div>
						</div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="email">Email</label>
						    <div class="col-sm-6">
						        <form:input type="text" path="email" id="email" data-parsley-type="email" placeholder="Endereço de email" requerid="" class="form-control" />
						        <div class="has-error">
									<form:errors path="email" class="help-inline"/>
								</div>
						    </div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="userProfiles">Profile</label>
							<div class="col-sm-8">
								<form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control" />
								<div class="has-error">
									<form:errors path="userProfiles" class="help-inline"/>
								</div>
							</div>
						</div>

						<div class="panel-footer">
							<div class="row">
								<div class="col-sm-8 col-sm-offset-2">
							
							<c:choose>
								<c:when test="${edit}">
									<input type="submit" value="Atualizar" class="btn-raised btn-success btn"/> <a href="<c:url value='/usuarios' />" class="btn-default btn">Cancelar </a>
								</c:when>
								<c:otherwise>
									<input type="submit" value="Salvar" class="btn-raised btn-success btn"/> <input type="reset" class="btn-inverse btn" value="Limpar"> <a href="<c:url value='/usuarios' />" class="btn-default btn">Cancelar </a>
								</c:otherwise>
							</c:choose>
							
						</div>
					</div>
				</div>	                    
	                </form:form>
					
				</div>
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


<!-- Load page level scripts-->
    
<script>
// See Docs
	window.ParsleyConfig = {
    	  successClass: 'has-success'
		, errorClass: 'has-error'
		, errorElem: '<span></span>'
		, errorsWrapper: '<span class="help-block"></span>'
		, errorTemplate: "<div></div>"
		, classHandler: function(el) {
    		return el.$element.closest(".form-group");
		}
	};
</script>
<script src="<c:url value='/resources/js/parsley.js' />"></script><!-- Validate Plugin / Parsley -->
<script src="<c:url value='/resources/js/demo-formvalidation.js' />"></script>

    <!-- End loading page level scripts-->


   </body>
</html>