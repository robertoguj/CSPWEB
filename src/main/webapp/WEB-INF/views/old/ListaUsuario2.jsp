<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<title>TCP - Tecnology control process</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="description" content="TCP - Tecnology control process">
<meta name="author" content="joseRocha">
<link rel="shortcut icon" href="<c:url value='/resources/images/logo-icon-csp.jpg' />" />

<link type="text/css" href="<c:url value='/resources/css/styles.css' />" rel="stylesheet" />

</head>

<body class="animated-content infobar-overlay">

<!-- HEADER BEGIN -->
	<%@include file="/template/header.jsp" %>
<!-- HEADER END -->

	<div id="wrapper">
		<div id="layout-static">
			<div class="static-sidebar-wrapper sidebar-teal">
				<div class="static-sidebar">
					<div class="sidebar">
						<!-- MENU BEGIN -->
							<%@include file="/template/menu.jsp" %>
						<!-- MENU END -->
					</div>
				</div>
			</div>
			
			<div class="static-content-wrapper">
				
				<!-- CONTENT BEGIN -->
				<div class="static-content">
					<div class="page-content">
						<ol class="breadcrumb">
							<li class=""><a href="index.html">HOME</a></li>
							<li class="active"><a href="index.html">USUARIOS</a></li>
						</ol>
						
						<div class="page-heading">
                            <h1>Lista de usuários</h1>
                        </div>
                        
                        <div class="container-fluid">

                        
                        	<div data-widget-group="group1">
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h2>Lista de usuários</h2>
												<div class="panel-ctrls"></div>
											</div>
											
											<!-- data table begin -->
											<div class="panel-body no-padding">
											
												<table id="example"	class="table table-striped table-bordered" cellspacing="0" width="100%">
													<thead>
													<tr>
														<th>Nome</th>
				        								<th>Sobrenome</th>
				        								<th>Email</th>
				        								<th>Usuário</th>
				        								<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
				        									<th width="100" colspan="2"></th>
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
																	<td><a href="<c:url value='/edita-usuario-${usuario.ssoId}' />" class="btn-success">editar</a></td>
				        										</sec:authorize>
				        										<sec:authorize access="hasRole('ADMIN')">
																	<td><a href="<c:url value='/deleta-usuario-${usuario.ssoId}' />" onclick="return confirm('Tem certeza de que deseja excluir este item?');" class="btn-danger">deletar</a></td>
        														</sec:authorize>
															</tr>
													</c:forEach>
												</tbody>
											</table>					
											
											</div>
											<!-- data table end -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- CONTENT END -->
				<!-- FOOTER BEGIN -->
					<%@include file="/template/footer.jsp" %>
				<!-- FOOTER END -->
			</div>
		</div>
	</div>

    <!-- Load page level scripts-->
	    <script src="<c:url value='/resources/js/jquery.dataTables.js' />"></script>
    	<script src="<c:url value='/resources/js/dataTables.bootstrap.js' />"></script>
    	<script src="<c:url value='/resources/js/demo-datatables.js' />"></script>
    <!-- End loading page level scripts-->

</body>
</html>