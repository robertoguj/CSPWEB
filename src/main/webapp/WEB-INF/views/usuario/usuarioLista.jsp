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
<link type="text/css" href="<c:url value='/resources/css/dataTables.bootstrap.css' />" rel="stylesheet">
<link type="text/css" href="<c:url value='/resources/css/dataTables.themify.css' />" rel="stylesheet">

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
<li><a href="<c:url value='/usuario/add' />">USUÁRIO</a></li>
<li class="active">LISTA DE USUÁRIOS</li>

                            </ol>

                            <div class="container-fluid">
                                


<div data-widget-group="group1">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>Lista de usuários</h2>
					<div class="panel-ctrls"></div>
				</div>
				<div class="panel-body no-padding">
					<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
						<thead>
							<tr>
														<sec:authorize access="hasRole('ADMIN')">
															<th>ID</th>
														</sec:authorize>
														<th>Nome</th>
				        								<th>Sobrenome</th>
				        								<th>Email</th>
				        								<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
				        									<th>Usuário</th>
				        								</sec:authorize>
				        								
													</tr>
													</thead>
													<tbody>
														<c:forEach items="${usuarios}" var="usuario">
															<tr>
																<sec:authorize access="hasRole('ADMIN')">
																	<td><a href="<c:url value='/usuario/deletar/${usuario.ssoId}' />" onclick="return confirm('Tem certeza de que deseja excluir este item?');" class="btn-danger">${usuario.id}</a></td>
																</sec:authorize>
																<td>${usuario.firstName}</td>
																<td>${usuario.lastName}</td>
																<td>${usuario.email}</td>
																<sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
																	<td><a href="<c:url value='/usuario/editar/${usuario.ssoId}' />" class="btn-success">${usuario.ssoId}</a></td>
																</sec:authorize>
															</tr>
													</c:forEach>
												</tbody>
					</table>
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

        
    
    <!-- Load page level scripts-->
    
<script src="<c:url value='/resources/js/jquery.dataTables.js' />"></script>
<script src="<c:url value='/resources/js/dataTables.bootstrap.js' />"></script>
<script src="<c:url value='/resources/js/demo-datatables.js' />"></script>

    <!-- End loading page level scripts-->

    </body>
</html>