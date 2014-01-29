<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		

		<g:javascript library='jquery' />
		<r:require module="jquery-ui"/>
		
		
		<g:javascript src="d3.v3.js" />
		
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.mCustomScrollbar.css')}" type="text/css">
		<g:javascript>
		var jq = document.createElement('script');
		jq.src = "//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js";
		document.getElementsByTagName('head')[0].appendChild(jq);
		</g:javascript>

		<g:javascript>
		$(function() {
			$( "input[type=submit]" )
				.button()
				.click(function( event ) {
				event.preventDefault();
			});
		});
		
		</g:javascript>
		
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div id="ideologyLogo" role="banner"><a href="${contextpath}/ideology_quiz"><img src="${resource(dir: 'images/home', file: 'log-ideology-home.jpg')}" alt="Ideology"/></a></div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<g:javascript src="jquery.mCustomScrollbar.js" />
		<r:layoutResources />
	</body>
</html>
