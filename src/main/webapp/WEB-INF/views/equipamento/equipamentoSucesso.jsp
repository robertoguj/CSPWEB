<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>

<title>CSP- Companhia Siderúrgica do Pecém</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="TCP - Tecnology control process">
<meta name="author" content="Roberto">
<link rel="shortcut icon" href="<c:url value='/resources/images/logo-icon-csp.jpg' />" />

<link type="text/css" href="<c:url value='/resources/css/styles.css' />" rel="stylesheet" />
<link type="text/css" href="<c:url value='/resources/css/jquery.pnotify.default.css' />" rel="stylesheet">

</head>

<body class="animated-content infobar-overlay">

	<!-- HEADER BEGIN -->
	<%@include file="/template/header.jsp"%>
	<!-- HEADER END -->

	<div id="wrapper">
		<div id="layout-static">

			<!-- MENU BEGIN -->
			<%@include file="/template/menu.jsp"%>
			<!-- MENU END -->

			<div class="static-content-wrapper">
				<div class="static-content">
					<div class="page-content">
						<ol class="breadcrumb">
							<li><a href="<c:url value='/home' />">HOME</a></li>
							<li><a href="<c:url value='/equipamento/add' />">PRODUTO</a></li>
							<li><a href="<c:url value='/equipamentos' />">LISTA EQUIPAMENTOS</a></li>
						</ol>

						<div class="container-fluid">
							<div data-widget-group="group1">
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-default" data-widget='{"draggable": "false"}'>
											<div class="panel-heading">
												<div class="panel-ctrls" data-actions-container="" data-action-collapse='{"target": ".panel-body"}'></div>
											</div>
											<div class="panel-body">
												<div class="alert alert-dismissable alert-success">
													<i class="fa fa-check"></i>&nbsp; <strong>${sucesso}</strong>
													<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
												</div>
												
												<table class="table">
												
												
									<tbody>
									  <tr>
										<th>Nome</th>
										<td>${equipamento.produto.nome}</td>
									  </tr>
									  <tr>
										<th>Fabricante</th>
										<td>${equipamento.produto.fabricante}</td>
									  </tr>
									  <tr>
										<th>Modelo</th>
										<td>${equipamento.produto.modelo}</td>
									  </tr>
									</tbody>
						        </table>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- .container-fluid -->
					</div>
					<!-- #page-content -->
				</div>

				<!-- FOOTER BEGIN -->
				<%@include file="/template/footer.jsp"%>
				<!-- FOOTER END -->
		</div>
		</div>
	</div>

	<!-- Load page level scripts-->
	<script src="<c:url value='/resources/js/jquery.pnotify.min.js' />"></script>
	<script src="<c:url value='/resources/js/demo-alerts.js' />"></script>
	<!-- End loading page level scripts-->

</body>
</html>