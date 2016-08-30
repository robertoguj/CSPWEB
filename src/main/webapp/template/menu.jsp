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
        						<li><a  class="withripple" href="cards.html">Cards</a></li>
								<li><a  class="withripple" href="ui-panels.html">Panels</a></li>
        						<li><a  class="withripple" href="ui-tiles.html">Tiles</a></li>
        						<li><a  class="withripple" href="custom-skylo.html">Page Progress</a></li>
        						<li><a  class="withripple" href="custom-bootbox.html">Bootbox</a></li>
        						<li><a  class="withripple" href="custom-pines.html">Notification</a></li>
        						<li><a  class="withripple" href="custom-pulsate.html">Pulsate</a></li>
								<li><a  class="withripple" href="custom-knob.html">jQuery Knob</a></li>
								<li><a  class="withripple" href="custom-slider.html">Slider</a></li>
								<li><a  class="withripple" href="custom-list.html">Lists</a></li>

        					</ul>
        				</li>
<!--		
						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">create</i></span><span>Manutenção</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="ui-forms.html">Form Layout</a></li>
								<li><a  class="withripple" href="form-components.html">Form Components</a></li>
								<li><a  class="withripple" href="form-pickers.html">Pickers</a></li>
								<li><a  class="withripple" href="form-wizard.html">Form Wizard</a></li>
								<li><a  class="withripple" href="form-validation.html">Form Validation</a></li>
								<li><a  class="withripple" href="form-masks.html">Form Masks</a></li>
								<li><a  class="withripple" href="form-dropzone.html">Dropzone Uploader</a></li>
								<li><a  class="withripple" href="form-summernote.html">Summernote</a></li>
								<li><a  class="withripple" href="form-markdown.html">Markdown Editor</a></li>
								<li><a  class="withripple" href="form-xeditable.html">Inline Editor</a></li>
								<li><a  class="withripple" href="form-gridforms.html">Grid Forms</a></li>
							</ul>
						</li>

						<li><a  class="withripple" href="javascript:;"><span class="icon"><i class="material-icons">apps</i></span><span>Tables</span></a>
							<ul class="acc-menu">
								<li><a  class="withripple" href="ui-tables.html">Basic Tables</a></li>
								<li><a  class="withripple" href="tables-responsive.html">Responsive Tables</a></li>
								<li><a  class="withripple" href="tables-editable.html">Editable Tables</a></li>
								<li><a  class="withripple" href="tables-data.html">Data Tables</a></li>
								<li><a  class="withripple" href="tables-fixedheader.html">Fixed Header Tables</a></li>
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