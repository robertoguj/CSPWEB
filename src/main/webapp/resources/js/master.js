function include(file) {
	var script = document.createElement('script');
	
	script.src = file;
	script.type = 'text/javascript';
	script.defer = true;
	
	document.getElementsByTagName('head').item(0).appendChild(script);
	
}

include('resources/js/jquery-1.10.2.min.js');
include('resources/js/jqueryui-1.10.3.min.js');
include('resources/js/bootstrap.min.js');
include('resources/js/enquire.min.js');
include('resources/js/velocity.min.js');
include('resources/js/velocity.ui.min.js');
include('resources/js/skylo.js');
include('resources/js/wijets.js');
include('resources/js/jquery.sparklines.min.js');
include('resources/js/bootstrap-tabdrop.js');
include('resources/js/prettify.js');
include('resources/js/jquery.nanoscroller.min.js');
include('resources/js/jquery.dropdown.js');
include('resources/js/material.min.js');
include('resources/js/ripples.min.js');
include('resources/js/application.js');
include('resources/js/demo.js');
include('resources/js/demo-switcher.js');

