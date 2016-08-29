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
<link rel="shortcut icon" href="<c:url value='/resources/images/bootstrap.css' />" />

<link type='text/css' href="<c:url value='/resources/css/icons.css' />" rel="stylesheet" />
<!-- Core CSS with all styles -->
<link type="text/css" href="<c:url value='/resources/css/styles.css' />" rel="stylesheet" />
<!-- Code Prettifier -->
<link type="text/css" href="<c:url value='/resources/css/prettify.css' />" rel="stylesheet" />
<!-- iCheck -->
<link type="text/css" href="<c:url value='/resources/css/jquery.dropdown.css' />" rel="stylesheet">
<!-- Skylo -->
<link type="text/css" href="<c:url value='/resources/css/skylo.css' />" rel="stylesheet">

<!--[if lt IE 10]>
        <script src="media.match.min.js"></script>
        <script src="respond.min.js"></script>
        <script src="placeholder.min.js"></script>
    <![endif]-->
<!-- The following CSS are included as plugins and can be removed if unused-->

<!-- DateRangePicker -->
<link href="<c:url value='/resources/css/daterangepicker-bs3.css' />" type="text/css" rel="stylesheet" />

<!-- FullCalendar -->
<link href="<c:url value='/resources/css/fullcalendar.css' />" type="text/css" rel="stylesheet" />
<link href="<c:url value='/resources/css/jquery-jvectormap-2.0.2.css' />"	type="text/css" rel="stylesheet" />
<link href="<c:url value='/resources/css/card.less' />" type="text/css"	rel="stylesheet" />

<!-- chartist -->
<link href="<c:url value='/resources/css/chartist.min.css' />" type="text/css" rel="stylesheet">

</head>

<body class="animated-content infobar-overlay">

	<!-- HEADER BEGIN -->
		<%@include file="/template/header.jsp" %>
	<!-- HEADER END -->

	<div id="wrapper">
		<div id="layout-static">
			<div class="static-sidebar-wrapper sidebar-blue">
				<div class="static-sidebar">
					<div class="sidebar">
						<!-- MENU BEGIN -->
						<div class="widget stay-on-collapse" id="widget-sidebar">
							<%@include file="/template/menu.jsp" %>
						</div>
						<!-- MENU END -->
					</div>
				</div>
			</div>
			
			<!-- CONTENT BEGIN -->
			<div class="static-content-wrapper">
				<div class="static-content">
					<!-- #page-content begin -->
					<div class="page-content">
						<ol class="breadcrumb">
							<li class=""><a href="index.html">HOME</a></li>
							<li class="active"><a href="index.html">DASHBORAD</a></li>
						</ol>
						<div class="page-heading"></div>
						<div class="container-fluid"></div>
						<!-- ### -->
					</div>
					<!-- #page-content end -->
				</div>
				<footer role="contentinfo">
					<div class="clearfix">
						<ul class="list-unstyled list-inline pull-left">
							<li><h6 style="margin: 0;">&copy; 2016 Todos os	direitos reservados</h6></li>
						</ul>
					</div>
				</footer>
			</div>
			<!-- CONTENT END -->
		</div>
	</div>

	<div class="infobar-wrapper scroll-pane">
		<div class="infobar scroll-content">
			<ul class="nav nav-tabs material-nav-tabs stretch-tabs icon-tabs">
				<li><a href="#tab-7-1" data-toggle="tab"> <i class="material-icons">settings</i></a></li>
				<li class="active "><a href="#tab-7-2" data-toggle="tab"><span class="step size-64"> <i class="material-icons">textsms</i></span></a></li>
			</ul>
		</div>
	</div>

	<!-- Load site level scripts -->
	<script src="<c:url value='/resources/scripts/jquery-1.10.2.min.js' />" ></script>
	<!-- Load jQuery -->
	<script src="<c:url value='/resources/scripts/jqueryui-1.10.3.min.js' />" ></script>
	<!-- Load jQueryUI -->
	<script src="<c:url value='/resources/scripts/bootstrap.min.js' />" ></script>
	<!-- Load Bootstrap -->
	<script src="<c:url value='/resources/scripts/enquire.min.js' />" ></script>
	<!-- Load Enquire -->
	<script src="<c:url value='/resources/scripts/velocity.min.js' />" ></script>
	<!-- Load Velocity for Animated Content -->
	<script src="<c:url value='/resources/scripts/velocity.ui.min.js' />" ></script>
	<script src="<c:url value='/resources/scripts/skylo.js' />"></script>
	<!-- Skylo -->
	<script src="<c:url value='/resources/scripts/wijets.js' />" ></script>
	<!-- Wijet -->
	<script src="<c:url value='/resources/scripts/jquery.sparklines.min.js' />"></script>
	<!-- Sparkline -->
	<script src="<c:url value='/resources/scripts/prettify.js' />"></script>
	<!-- Code Prettifier  -->
	<script src="<c:url value='/resources/scripts/bootstrap-tabdrop.js' />"></script>
	<!-- Bootstrap Tabdrop -->
	<script src="<c:url value='/resources/scripts/jquery.nanoscroller.min.js' />" ></script>
	<!-- nano scroller -->
	<script src="<c:url value='/resources/scripts/jquery.dropdown.js' />" ></script>
	<!-- Fancy Dropdowns -->
	<script src="<c:url value='/resources/scripts/material.min.js' />" ></script>
	
	<!-- Bootstrap Material -->
	<script src="<c:url value='/resources/scripts/ripples.min.js' />" ></script>
	<!-- Bootstrap Material -->

	<script src="<c:url value='/resources/scripts/application.js' />"></script>
	<script src="<c:url value='/resources/scripts/demo.js' />"></script>
	<script src="<c:url value='/resources/scripts/demo-switcher.js' />" ></script>

	<!-- End loading site level scripts -->

</body>
</html>