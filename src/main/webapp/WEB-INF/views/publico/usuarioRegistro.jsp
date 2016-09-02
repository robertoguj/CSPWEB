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

    <body class="focused-form animated-content">
        
        
<div class="container" id="registration-form">
	<a href="index.html" class="login-logo"><img src="<c:url value='/resources/images/logo-csp.jpg' />" height="80px" width="360px"></a>
	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-default">
				<div class="panel-heading" style="height:60px;">
					<h2>Registrar usuário</h2>
				</div>
				<div class="panel-body">
				
					<c:if test="${error != null}">
						<div class="alert alert-danger">
							${msgErro}
						</div>
					</c:if>
				
					<c:url var="adicionarUsuario" value="/usuario/add" ></c:url>

					<form:form action="${adicionarUsuario}" commandName="usuario" class="form-horizontal">
						<div class="form-group mb-md">
	                        <div class="col-xs-8 col-xs-offset-2">
	                        	<form:input type="text" path="firstName" class="form-control" id="firstName" placeholder="Primeiro nome" />
	                        </div>
						</div>
						<div class="has-error msg-requerid">
							<form:errors path="firstName" class="help-inline"/>
						</div>
						<div class="form-group mb-md">
	                        <div class="col-xs-8 col-xs-offset-2">
	                        	<form:input type="text" path="lastName" class="form-control" id="lastName" placeholder="Segundo nome" />
	                        </div>
						</div>
						<div class="has-error msg-requerid">
							<form:errors path="lastName" class="help-inline"/>
						</div>
						<div class="form-group mb-md">
	                        <div class="col-xs-8 col-xs-offset-2">
	                        	<form:input type="text" path="ssoId" class="form-control" id="ssoId" placeholder="Usuario" />
	                        </div>
						</div>
						<div class="has-error msg-requerid">
							<form:errors path="ssoId" class="help-inline"/>
						</div>
						<div class="form-group mb-md">
	                        <div class="col-xs-8 col-xs-offset-2">
	                        	<form:input type="text" path="email" class="form-control" id="email" placeholder="Email" />
	                        </div>
						</div>
						<div class="has-error msg-requerid">
							<form:errors path="email" class="help-inline"/>
						</div>
						<div class="form-group mb-md">
	                        <div class="col-xs-8 col-xs-offset-2">
	                        	<form:input type="password" path="password" class="form-control" id="password" placeholder="Senha" />
	                        </div>
						</div>
						<div class="has-error msg-requerid">
							<form:errors path="password" class="help-inline"/>
						</div>
						<div class="form-group mb-md">
	                        <div class="col-xs-8 col-xs-offset-2">
	                        	<input type="password" class="form-control" id="confirmarSenha" placeholder="Confirmar senha" required>
	                        </div>
						</div>
						
						<div class="panel-footer">
							<div class="clearfix">
								<a href="<c:url value='/login' />" class="btn btn-default pull-left">Já Registrado? Login</a>
								<input type="submit" value="Registrar" class="btn btn-primary btn-raised pull-right"/>
							</div>
						</div>
						
					</form:form>
					
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Load site level scripts -->
	<script src="<c:url value='/resources/js/jquery-1.10.2.min.js' />"></script> <!-- Load jQuery -->
	<script src="<c:url value='/resources/js/jqueryui-1.10.3.min.js' />"></script> <!-- Load jQueryUI -->
	<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script> <!-- Load Bootstrap -->
	<script src="<c:url value='/resources/js/enquire.min.js' />"></script> <!-- Load Enquire -->
	<script src="<c:url value='/resources/js/velocity.min.js' />"></script> <!-- Load Velocity for Animated Content -->
	<script src="<c:url value='/resources/js/velocity.ui.min.js' />"></script>
	<script src="<c:url value='/resources/js/skylo.js' />"></script> <!-- Skylo -->
	<script src="<c:url value='/resources/js/wijets.js' />"></script> <!-- Wijet -->
	<script src="<c:url value='/resources/js/jquery.sparklines.min.js' />"></script> <!-- Sparkline -->
	<script src="<c:url value='/resources/js/prettify.js' />"></script>
	<script src="<c:url value='/resources/js/bootstrap-tabdrop.js' />"></script> <!-- Bootstrap Tabdrop -->
	<script	src="<c:url value='/resources/js/jquery.nanoscroller.min.js' />"></script>
	<script src="<c:url value='/resources/js/jquery.dropdown.js' />"></script> <!-- Fancy Dropdowns -->
	<script src="<c:url value='/resources/js/material.min.js' />"></script> <!-- Bootstrap Material -->
	<script src="<c:url value='/resources/js/ripples.min.js' />"></script>
	<script src="<c:url value='/resources/js/application.js' />"></script>
	<script src="<c:url value='/resources/js/demo.js' />"></script>
	<script src="<c:url value='/resources/js/demo-switcher.js' />"></script>
	<!-- End loading site level scripts -->


   </body>
</html>