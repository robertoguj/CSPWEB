<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<head>

<title>CSP- Companhia Siderúrgica do Pecém</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="TCP - Tecnology control process">
<meta name="author" content="Roberto">
<link rel="shortcut icon" href="<c:url value='/resources/images/logo-icon-csp.jpg' />" />

<link type="text/css" href="<c:url value='/resources/css/styles.css' />" rel="stylesheet" />
<link type="text/css" href="<c:url value='/resources/css/dataTables.bootstrap.css' />" rel="stylesheet">
<link type="text/css" href="<c:url value='/resources/css/dataTables.themify.css' />" rel="stylesheet">
<link type="text/css" href="<c:url value='/resources/js/datatable/buttons.dataTables.min.css' />" rel="stylesheet" >

<script type="text/javascript" src="<c:url value='/resources/js/datatable/jquery-1.12.3.js'/> "></script>
<script type="text/javascript" src="<c:url value='/resources/js/datatable/jquery.dataTables.min.js'/> "></script>
<script type="text/javascript" src="<c:url value='/resources/js/datatable/dataTables.buttons.min.js'/> "></script>
<script type="text/javascript" src="<c:url value='/resources/js/datatable/buttons.flash.min.js'/> "></script>
<script type="text/javascript" src="<c:url value='/resources/js/datatable/jszip.min.js'/> "></script>
<script type="text/javascript" src="<c:url value='/resources/js/datatable/pdfmake.min.js'/> "></script>
<script type="text/javascript" src="<c:url value='/resources/js/datatable/vfs_fonts.js'/> "></script>
<script type="text/javascript" src="<c:url value='/resources/js/datatable/buttons.html5.min.js'/> "></script>
<script type="text/javascript" src="<c:url value='/resources/js/datatable/buttons.print.min.js'/> "></script>

<script type="text/javascript" class="init">

$(document).ready(function() {
	$('#example1').DataTable( {
		dom: 'Bfrtip',
		buttons: [
			'copy', 'csv', 'excel', 'pdf', 'print'
		]
	} );
} );

</script>

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
<li><a href="<c:url value='/produto/add' />">PRODUTO</a></li>
<li class="active">LISTA DE PRODUTOS</li>

                            </ol>

                            <div class="container-fluid">
                                

<div data-widget-group="group1">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>Lista de Produtos</h2>
					
				</div>
				<div class="panel-body no-padding">
					<c:if test="${!empty listaProdutos}">
					<table id="example1" class="table table-striped table-bordered">
						<thead>
		      		<tr>
				        <sec:authorize access="hasRole('ADMIN')">
				        	<th width="30px;">ID</th>
				        </sec:authorize>
				        <th width="150px;">Código</th>
				        <th>Nome</th>
				        <th width="100px;">Fabricante</th>
				        <th width="200px;">Modelo</th>
				        <th>Descricao</th>
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${listaProdutos}" var="produto">
					<tr>
						<sec:authorize access="hasRole('ADMIN')">
							<td width="30px;"><a href="<c:url value='/removerProduto/${produto.id}' />" class="btn-danger" onclick="return confirm('Tem certeza de que deseja excluir este item?');">${produto.id}</a></td>
        				</sec:authorize>						
						<td width="150px;">${produto.codigo}</td>
						<td>${produto.nome}</td>
						<td width="100px;">${produto.fabricante}</td>
						<td width="200px;"><a href="<c:url value='/editarProduto/${produto.id}' />" class="btn-success">${produto.modelo}</a></td>
						<td>${produto.descricao}</td>
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
                    <footer role="contentinfo">
    <div class="clearfix">
        <ul class="list-unstyled list-inline pull-left">
            <li><h6 style="margin: 0;">&copy; 2016 Todos os	direitos reservados</h6></li>
        </ul>
    </div>
</footer>

                </div>
                <div class="extrabar-underlay"></div>
            </div>
        </div>

    

    


    <!-- Load site level scripts -->

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
    
    <!-- Load page level scripts-->
	<script src="<c:url value='/resources/js/dataTables.bootstrap.js' />"></script>
    <!-- End loading page level scripts-->

    </body>
</html>