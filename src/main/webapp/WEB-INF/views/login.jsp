<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<title>CSP- Companhia Siderúrgica do Pecém</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="description" content="TCP - Tecnology control process">
<meta name="author" content="Roberto">
<link rel="shortcut icon" href="<c:url value='/resources/images/logo-icon-csp.jpg' />" />

<link type="text/css" href="<c:url value='/resources/css/styles.css' />" rel="stylesheet" />

</head>

<body class="focused-form animated-content">
      
<div class="container" id="login-form">
	<a href="http://www.cspecem.com" class="login-logo">
		<img src="<c:url value='/resources/images/logo-csp.jpg' />" height="80px" width="360px">
	</a>
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading" style="height:60px;">
						<h2>Acesso restrito</h2>
					</div>
					<div class="panel-body">
						<c:url var="loginUrl" value="/login" />
						<form action="${loginUrl}" method="post" class="form-horizontal" id="validate-form">
						
							<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Nome de usuário ou senha incorretos.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p>Você foi desconectado com sucesso.</p>
								</div>
							</c:if>
							
							<div class="form-group mb-md">
		                        <div class="col-xs-12">
		                        	<div class="input-group">							
										<span class="input-group-addon">
											<i class="ti ti-user"></i>
										</span>
										<input type="text" class="form-control" id="username" name="ssoId" placeholder="Usuário" required>
									</div>
		                        </div>
							</div>

							<div class="form-group mb-md">
		                        <div class="col-xs-12">
		                        	<div class="input-group">
										<span class="input-group-addon">
											<i class="ti ti-key"></i>
										</span>
										<input type="password" class="form-control" id="password" name="password" placeholder="Senha" required>
									</div>
		                        </div>
							</div>

							<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />

							<div class="panel-footer">
								<div class="form-actions">
									<a href="<c:url value='/registro' />" class="btn btn-default pull-left">Registrar</a>
									<input type="submit" class="btn btn-primary btn-raised pull-right" value="Login">
								</div>
							</div>							
						</form>

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