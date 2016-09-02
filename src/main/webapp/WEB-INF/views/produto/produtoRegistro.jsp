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
								<li><a href="<c:url value='/home' />">HOME</a></li>
								<li><a href="<c:url value='/produtos' />">PRODUTO</a></li>
                            </ol>
                            
                            <div class="container-fluid">
                                
<div data-widget-group="group1">
	

	<div class="row">
		<div class="col-sm-12">
			<div class="panel panel-default" data-widget='{"draggable": "false"}'>
				<div class="panel-heading">
					<h2>Cadastro de produtos</h2>
					<div class="panel-ctrls" data-actions-container="" data-action-collapse='{"target": ".panel-body, .panel-footer"}'></div>
				</div>
				<div class="panel-body">
				
				<c:url var="addAction" value="/produto/add" ></c:url>
					<form:form action="${addAction}" path="id" readonly="true" size="8" disabled="true" commandName="produto" class="form-horizontal row-border" id="validate-form" data-parsley-validate="">
					<form:hidden path="id" />
	                    <div class="form-group">
	                        <label class="col-sm-3 control-label" for="nome">Nome</label>
	                        <div class="col-sm-6">
	                            <form:select path="nome" id="nome" class="form-control">
    								<form:option value="none">--SELECT--</form:option>
    								<form:option value="KVM">KVM</form:option>
    								<form:option value="Roteador">Roteador</form:option>
    								<form:option value="Servidor">Servidor</form:option>
    								<form:option value="Switch">Switch</form:option>
    								<form:option value="Microcomputador">Microcomputador</form:option>
    							</form:select>
	                            <div class="has-error">
									<form:errors path="nome" class="help-inline"/>
								</div>
	                        </div>
	                    </div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="fabricante">Fabricante</label>
						    <div class="col-sm-6">
						        <form:select  path="fabricante" id="fabricante" class="form-control">
    								<form:option value="none">--SELECT--</form:option>
    								<form:option value="ABB">ABB</form:option>
    								<form:option value="Advantech">Advantech</form:option>
    								<form:option value="Allied Telesis">Allied Telesis</form:option>
    								<form:option value="Cisco">Cisco</form:option>
    								<form:option value="Dell">Dell</form:option>
    								<form:option value="HP">Hewlett-Packard</form:option>
    								<form:option value="Hirschmann">Hirschmann</form:option>
    								<form:option value="Ibyte">Ibyte</form:option>
    								<form:option value="IEI">IEI</form:option>
    								<form:option value="Ruggedcom">Ruggedcom</form:option>
    								<form:option value="Siemens">Siemens</form:option>
    							</form:select>
						    </div>
						</div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="modelo">Modelo</label>
						    <div class="col-sm-6">
						        <form:input type="text" path="modelo" id="modelo" data-parsley-maxlength="6" placeholder="Pelo menos 6 caracteres" required="" class="form-control" />
						    </div>
						</div>
						<div class="form-group">
						    <label class="col-sm-3 control-label" for="codigo">Código</label>
						    <div class="col-sm-6">
						        <form:input type="text" path="codigo" id="codigo" data-parsley-maxlength="6" placeholder="Pelo menos 6 caracteres" required="" class="form-control" />
						    </div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label" for="descricao">Descrição</label>
							<div class="col-sm-6"><form:textarea path="descricao" id="descricao" cols="50" rows="4" data-parsley-range="[10,30]" placeholder="Entre 10 e 30 caracteres" requerid="" class="form-control" /></div>
						</div>
						<div class="panel-footer">
							<div class="row">
								<div class="col-sm-8 col-sm-offset-2">
							
							<c:if test="${!empty produto.nome}">
								<input type="submit" value="<spring:message text="Atualizar"/>" class="btn-raised btn-success btn" /> <a href="<c:url value='/home' />" class="btn-default btn">Cancelar </a>
							</c:if>
							<c:if test="${empty produto.nome}">
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