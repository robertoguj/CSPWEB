<header id="topnav" class="navbar" role="banner">
	<div class="logo-area">
		<a class="navbar-brand" href="index.html">
			<img class="show-on-collapse" alt="Paper" src="<c:url value='/resources/images/logo-icon-csp.jpg' />">
			<img alt="Paper" src="<c:url value='/resources/images/logo-csp.jpg' />">
		</a>
		<span id="trigger-sidebar" class="toolbar-trigger toolbar-icon-bg stay-on-search">
			<a data-toggle="tooltips" data-placement="right" title="Menu">
				<span> <i class="material-icons">menu</i> </span>
			</a>
		</span>
		<span id="trigger-search" class="toolbar-trigger toolbar-icon-bg ov-h">
			<a data-toggle="tooltips" data-placement="right" title="Pesquisar">
				<span> <i class="material-icons">search</i> </span>
			</a>
		</span>
		<div id="search-box">
			<input class="form-control" type="text" placeholder="Pesquisar"	id="search-input"></input>
		</div>
	</div>
	<!-- logo-area -->

	<ul class="nav navbar-nav toolbar pull-right">
		<li class="toolbar-icon-bg appear-on-search ov-h" id="trigger-search-close">
			<a href="/logout" class="toggle-fullscreen"><span> <i class="material-icons">close</i></span></a>
		</li>
		<li class="toolbar-icon-bg hidden-xs" id="trigger-fullscreen">
			<a href="#" class="toggle-fullscreen"><span> <i class="material-icons">fullscreen</i></span></a>
		</li>
		<li class="toolbar-icon-bg">
			<a href="<c:url value="/logout" />" data-toggle="tooltips" data-placement="right" title="Toggle Sidebar"> <span> <i class="material-icons">exit_to_app</i> </span></a>
		</li>
	</ul>
</header>