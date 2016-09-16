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
	<link href="<c:url value='/resources/css/daterangepicker-bs3.css' />" type="text/css" rel="stylesheet">    <!-- DateRangePicker -->
	<link href="<c:url value='/resources/css/clockface.css' />" type="text/css" rel="stylesheet">                   	<!-- Clockface -->


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
								<li><a href="<c:url value='/equipamentos' />">EQUIPAMENTO</a></li>
                            </ol>
                            
                            <div class="container-fluid">
                                
<div data-widget-group="group1">
	

	<div class="row">
		<div class="col-sm-12">
			<div class="panel panel-default" data-widget='{"draggable": "false"}'>
				<div class="panel-heading">
					<h2>Cadastro de equipamentos</h2>
					<div class="panel-ctrls" data-actions-container="" data-action-collapse='{"target": ".panel-body, .panel-footer"}'></div>
				</div>
				<div class="panel-body">
				
				<c:url var="addAction" value="/equipamento/add" ></c:url>
					<form:form action="${addAction}" path="id" readonly="true" size="8" disabled="true" commandName="equipamento" class="form-horizontal row-border" id="validate-form" data-parsley-validate="">
					<form:hidden path="id" />
	                    <div class="form-group">
	                        <label class="col-sm-3 control-label" for="produto">Produto</label>
	                        <div class="col-sm-6">
	                            <form:select path="produto" id="produto" class="form-control">
    								<form:option value="0" label="--SELECT--" />
    								<form:options itemValue="id" items="${listaProdutos}" itemLabel="modelo" />
    							</form:select>
	                            <div class="has-error">
									<form:errors path="produto" class="help-inline"/>
								</div>
	                        </div>
	                    </div>
	                    <div class="form-group">
						    <label class="col-sm-3 control-label" for="numeroSerie">Número de série</label>
						    <div class="col-sm-6">
						        <form:input type="text" path="numeroSerie" id="numeroSerie" data-parsley-maxlength="6" placeholder="Pelo menos 6 caracteres" required="" class="form-control" />
						        <div class="has-error">
									<form:errors path="numeroSerie" class="help-inline"/>
								</div>
						    </div>
						</div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="area">Área</label>
						    <div class="col-sm-6">
						        <form:select  path="area" id="area" class="form-control">
    								<form:option value="0">--SELECT--</form:option>
    								<form:option value="Coke">Coke Making Plant</form:option>
    								<form:option value="Sinter">Sinter plant</form:option>
    								<form:option value="BF">Blast Furnace</form:option>
    								<form:option value="SMP">Steel Making Plant</form:option>
    								<form:option value="CC">Continuous Casting Plant</form:option>
    								<form:option value="PP">Power Plant</form:option>
    								<form:option value="EC">Energy Center</form:option>
    								<form:option value="RM">Raw Material</form:option>
    								<form:option value="LC">Central Laboratory</form:option>
    								<form:option value="DU">Utility Distribution</form:option>
    								<form:option value="TC">Training Center</form:option>
    								<form:option value="PCO">PCO</form:option>
    								<form:option value="TC">Training Center</form:option>
    							</form:select>
    							<div class="has-error">
									<form:errors path="area" class="help-inline"/>
								</div>
						    </div>
						</div>
						
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="subarea">Sub-área</label>
						    <div class="col-sm-6">
						        <form:select  path="subarea" id="subarea" class="form-control">
    								<form:option value="0" label="--SELECT--" />
    								<form:options items="${subareaLista}" />
    							</form:select>
    							<div class="has-error">
									<form:errors path="subarea" class="help-inline"/>
								</div>
						    </div>
						</div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="local">Local</label>
						    <div class="col-sm-6">
						        <form:select  path="local" id="local" class="form-control">
    								<form:option value="0">--SELECT--</form:option>
    								<form:option value="Computer Room">Computer Room</form:option>
    								<form:option value="PLC Room">PLC Room</form:option>
    								<form:option value="Operation Room">Operation Room</form:option>
    								<form:option value="Electric Room">Electric Room</form:option>
    								<form:option value="OS2 Main Control 1FL">OS2 Main Control 1FL</form:option>
    								<form:option value="OS2 Main Control 2FL">OS2 Main Control 2FL</form:option>
    							</form:select>
    							<div class="has-error">
									<form:errors path="local" class="help-inline"/>
								</div>
						    </div>
						</div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="tag">TAG</label>
						    <div class="col-sm-6">
						        <form:input type="text" path="tag" id="tag" data-parsley-maxlength="6" placeholder="Pelo menos 6 caracteres" required="" class="form-control" />
						    </div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="rack">Rack ID</label>
							<div class="col-sm-6">
						        <form:input type="text" path="rack" id="rack" data-parsley-maxlength="6" placeholder="Pelo menos 6 caracteres" required="" class="form-control" />
						    </div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="statusGarantia">Garantia</label>
							 <div class="col-sm-6">
								<form:select  path="statusGarantia" id="statusGarantia" class="form-control">
    								<form:option value="none">--SELECT--</form:option>
    								<form:option value="ATIVA">Ativa</form:option>
    								<form:option value="EXPIRADA">Expirada</form:option>
    							</form:select>
    							<div class="has-error">
									<form:errors path="statusGarantia" class="help-inline"/>
								</div>
    						</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="dataGarantia">Data garantia</label>
							<div class="col-sm-6">
								<form:input type="text" path="dataGarantia" class="form-control" id="dataGarantia" />
							</div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-sm-8 col-sm-offset-2">
							
							<c:if test="${!empty equipamento.numeroSerie}">
								<input type="submit" value="<spring:message text="Atualizar"/>" class="btn-raised btn-success btn" /> <a href="<c:url value='/equipamentos' />" class="btn-default btn">Cancelar </a>
							</c:if>
							<c:if test="${empty equipamento.numeroSerie}">
								<input type="submit" value="<spring:message text="Salvar"/>" class="btn-raised btn-success btn" /> <input type="reset" class="btn-inverse btn" value="Limpar" /> <a href="<c:url value='/home' />" class="btn-default btn">Cancelar </a>
							</c:if>

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
    
	<script src="<c:url value='/resources/js/moment.min.js' />"></script>              			<!-- Moment.js for Date Range Picker -->
	<script src="<c:url value='/resources/js/bootstrap-colorpicker.min.js' />"></script> 			<!-- Color Picker -->
	<script src="<c:url value='/resources/js/daterangepicker.js' />"></script>     				<!-- Date Range Picker -->
	<script src="<c:url value='/resources/js/bootstrap-datepicker.js' />"></script>      			<!-- Datepicker -->
	<script src="<c:url value='/resources/js/bootstrap-timepicker.js' />"></script>      			<!-- Timepicker -->
	<script src="<c:url value='/resources/js/bootstrap-datetimepicker.js' />"></script> <!-- DateTime Picker -->
	<script src="<c:url value='/resources/js/clockface.js' />"></script>     								<!-- Clockface -->
	<script src="<c:url value='/resources/js/demo-pickers.js' />"></script>

    <!-- End loading page level scripts-->




   </body>
</html>