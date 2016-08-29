<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>

<title>CSP- Companhia Siderúrgica do Pecém</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="description" content="TCP - Tecnology control process">
<meta name="author" content="Roberto">
<link rel="shortcut icon" href="<c:url value='/resources/images/logo-icon-csp.jpg' />" />
<link type="text/css" href="<c:url value='/resources/css/styles.css' />" rel="stylesheet" />

</head>

<body class="animated-content infobar-overlay">

<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- HEADER BEGIN -->
	<%@include file="/template/header.jsp" %>
<!-- HEADER END -->

	<div id="wrapper">
		<div id="layout-static">
			
			<!-- MENU BEGIN -->
				<%@include file="/template/menu.jsp" %>
			<!-- MENU END -->
			
			<div class="static-content-wrapper">
				
				<!-- CONTENT BEGIN -->
				<div class="static-content">
					<div class="page-content">
						<ol class="breadcrumb">
							<li class=""><a href="index.html">HOME</a></li>
							<li class="active"><a href="index.html">DASHBORAD</a></li>
						</ol>
						
						<!-- #page-content-begin -->
							<strong>Seja bem vindo! ${usuarioLogado}</strong>
						<!-- #page-content-end -->
												
					</div>
				</div>
				<!-- CONTENT END -->
				
				<!-- FOOTER BEGIN -->
					<%@include file="/template/footer.jsp" %>
				<!-- FOOTER END -->
	
			</div>
		</div>
	</div>

</body>
</html>