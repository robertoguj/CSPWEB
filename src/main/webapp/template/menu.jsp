<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div class="static-sidebar-wrapper sidebar-teal">
	<div class="static-sidebar">
		<div class="sidebar">
			<div class="widget stay-on-collapse" id="widget-sidebar">
				<nav role="navigation" class="widget-body">
					<ul class="acc-menu">
						<li class="nav-separator"><span>MENU</span></li>
						<li><a  class="withripple" href="<c:url value='/home' />"><span class="icon">
							<i class="material-icons">home</i></span><span>Home</span></a></li>
						
						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">flash_on</i></span><span>Usuário</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="<c:url value='/usuario/add' />">Cadastrar Usuário</a></li>
								<li><a  class="withripple" href="<c:url value='/usuarios' />">Listar Usuário</a></li>
							</ul>
						</li>

						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">settings</i></span><span>Produto</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="<c:url value='/produto/add' />">Cadastrar Produto</a></li>
								<li><a  class="withripple" href="<c:url value='/produtos' />">Listar Produto</a></li>
							</ul>
						</li>
 
        				<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">shuffle</i></span><span>Equipamento</span></a>
        					<ul class="acc-menu">
        						<li><a  class="withripple" href="<c:url value='/equipamento/add' />">Cadastrar Equipamento</a></li>
								<li><a  class="withripple" href="<c:url value='/equipamentos' />">Listar Equipamento</a></li>
        					</ul>
        				</li>

						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">create</i></span><span>Cadastro</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="<c:url value='/areas' />">Áreas</a></li>
								<li><a  class="withripple" href="<c:url value='/departamentos' />">Departamentos</a></li>
								<li><a  class="withripple" href="<c:url value='/produto/add' />">Produtos</a></li>
								<li><a  class="withripple" href="<c:url value='/equipamento/add' />">Equipamentos</a></li>
							</ul>
						</li>

<!--
						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">apps</i></span><span>Consultas</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="<c:url value='/produtos' />">Produtos</a></li>
								<li><a  class="withripple" href="<c:url value='/equipamentos' />">Equipamentos</a></li>
							</ul>
						</li>
 		
						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">show_chart</i></span><span>Analytics</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="charts-flot.html">Flot</a></li>
								<li><a  class="withripple" href="charts-sparklines.html">Sparklines</a></li>
								<li><a  class="withripple" href="charts-chartist.html">Chartist</a></li>
								<li><a  class="withripple" href="charts-nvd3.html">NVD3</a></li>
								<li><a  class="withripple" href="charts-easypiechart.html">Easy Pie Chart</a></li>
							</ul>
						</li>

						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">map</i></span><span>Maps</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="maps-google.html">Google Maps</a></li>
								<li><a  class="withripple" href="maps-jvectormap.html">jVector Maps</a></li>
								<li><a  class="withripple" href="maps-mapael.html">Mapael</a></li>
							</ul>
						</li>
-->
						<li class="nav-separator"><span>Extras</span></li>

						<li><a  class="withripple" href="extras-calendar.html"><span class="icon"><i class="material-icons">event_note</i></span><span>Calendário</span></a></li>
						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">pages</i></span><span>Pages</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="extras-profile.html">Profile</a></li>
								<li><a  class="withripple" href="extras-invoice.html">Invoice</a></li>
								<li><a  class="withripple" href="coming-soon.html">Coming Soon</a></li>
								<li><a  class="withripple" href="extras-login.html">Login</a></li>
								<li><a  class="withripple" href="extras-forgotpassword.html">Password Recovery</a></li>
								<li><a  class="withripple" href="extras-registration.html">Registration</a></li>
								<li><a  class="withripple" href="extras-forgotpassword.html">Password Reset</a></li>
							</ul>
						</li>
						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">email</i></span><span>Inbox</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="app-inbox.html">All</a></li>
								<li><a  class="withripple" href="app-inbox-read.html">Read</a></li>
								<li><a  class="withripple" href="app-inbox-compose.html">Compose</a></li>
							</ul>
						</li>
						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">folder</i></span><span>Sub Menu</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="javascript:;"><span>Aliquam</span></a>
									<ul class="acc-menu">
										<li><a href="#" class="withripple" href="">Integer</a></li>
										<li><a href="#" class="withripple" href="">Ut Aliqum</a></li>
										<li><a href="#" class="withripple" href="">Cras Isculis</a></li>
									</ul>
								</li>
								<li><a href="#" class="withripple" href="javascript:;">Vestibulum</a></li>
								<li><a href="#" class="withripple" href="javascript:;">Praesent</a></li>
							</ul>
						</li>
						
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>