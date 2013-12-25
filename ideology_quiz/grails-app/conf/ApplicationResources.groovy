modules = {
    application {
        resource url:'js/application.js'
    }
	// Define reference to custom jQuery UI theme
	overrides {
		'jquery-theme' {
			resource id: 'theme', url: '/css/custom-theme/jquery-ui-1.10.3.custom.css'
		}
	}
	
}