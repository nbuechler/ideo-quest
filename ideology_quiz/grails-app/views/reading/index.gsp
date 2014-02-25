<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Insert title here</title>

<style>
h3 {
	text-align: right;
}

h6 {
	font-size: .8em;
	color: red;
}

#sidebarReading{
	float: left; 
	width: 20%; 
	height: 500px; 
	background: none repeat scroll 0% 0% #D7D8E2;
	padding: 1%;
	-moz-box-sizing: border-box; 
	-webkit-box-sizing: border-box; 
	box-sizing: border-box;
}

#focusReading{
	float: left; 
	width: 80%;
	height: 500px; 
	background: none repeat scroll 0% 0% aliceblue;
	padding-top: 1%;
	border: 10px ridge #D7D8E2;
	-moz-box-sizing: border-box; 
	-webkit-box-sizing: border-box; 
	box-sizing: border-box;
}

.ideologyReading{
	background-color: #A3A7B9;
	font-size: .8em;
	padding: .5em;
	margin: .5em;
	text-align: center;
	font-weight: bold;
}

.ideologyReading a{
	color: aliceblue;
	padding: .5em;
	text-align: center;
	font-weight: bold;
	text-decoration: none;
}

.ideologyReading a:hover{
	color: #D7D8E2;
	padding: .5em;
	text-align: center;
	font-weight: bold;
	text-decoration: none;
}

</style>

</head>

<!-- http://manos.malihu.gr/jquery-custom-content-scroller/ -->
	<g:javascript>
		(function($){
	        $(window).load(function(){
	            $("#sidebarReading").mCustomScrollbar();
	        });
    	})(jQuery);
    	
    	
    </g:javascript>
    
    <g:javascript>
    
	    <g:each status="i" in="${ideoList}" var="ideology">
		    function ${ideology}()
				{
		    	$('#focusReading').load('/ideology_quiz/reading/${ideology}');
				}
		</g:each>
    </g:javascript>

<body>
	<div class="body">
		<div id="sidebarReading">
			<g:each status="i" in="${ideoList}" var="ideology">
						<div class="ideologyReading" onclick="${ideology}()"><a href="#">${ideology.capitalize()}</a></div>
			</g:each>
		</div>
		
		<div id="focusReading">
		
		</div>
	</div>
</body>

</html>