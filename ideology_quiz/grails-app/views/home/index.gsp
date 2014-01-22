<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Let your IdeoQuest Begin!</title>

<g:set var="color1" value="#C0C2CD" />
<g:set var="color2" value="#6B728F" />
<g:set var="color3" value="#A3A7B9" />

<style>

#wrapper{
	background-color: #A3A7B9;
	padding: 2.5%;
	margin: 2.5%;
}

#footHome{
	text-align: center;
	font-size: 70%;
	padding-top: 1%;
}

.mainColo{
	width: 31.3%;
	margin: 1%;
	float: left;
	font-size: 78%;
	color: #F7F7F9;
}

#stageAreaWrapper{
	background: -webkit-linear-gradient(left, #A3A7B9 , #D7D8E2); /* For Safari */
	background: -o-linear-gradient(right, #A3A7B9, #D7D8E2); /* For Opera 11.1 to 12.0 */
	background: -moz-linear-gradient(right, #A3A7B9, #D7D8E2); /* For Firefox 3.6 to 15 */
	background: linear-gradient(to right, #A3A7B9 , #D7D8E2); /* Standard syntax */
	min-height: 360px;
}

#stageArea{
	float: right;
	width: 80%;
	margin: 1%;
	margin-top: 2%;
}

#stageDir{
	float: right;
	width: 16%;
/* Need to figure out how to style a scroll bar
	height: 500px;
	overflow-y: scroll;
*/
	margin: 1%;
}

.sAreas{
	background-color: pink;
	border: 1px;
	border-color: black;
	border-style: solid;
	width: 70px;
	height: 70px;
	margin: 10px;
}

#welcomeSA0{
	float: right;
}

#messageSA0{
	position: absolute;
	margin-top: 3%;
	margin-left: -2%;
	width: 185px;
	background-color: #DBDCE5;
	border-radius: 11px;
	border: solid 1px;
}

#nGraphSCR{
	width: 70%;
	margin-top: 4%;
	margin-bottom: 4%;
	/*background-color: red;*/
	float: right;
}

#onwards{
	background-color: silver;
	color: aliceblue;
	width: 91%; 
	font-size: 20px; 
	border-radius: 10px; 
	padding-top: 50px; 
	padding-bottom: 50px; 
	margin: 8px; 
	margin-top: 17px; 
	text-shadow: -1.8px -1.8px 0 #000, 
	.8px -.8px 0 #000, -.8px .8px 0 #000, 
	.8px .8px 0 #000;
}

#onwards:hover{
	background-color: aliceblue;
}

#onwards:active{
	background-color: darkslategray;
}

</style>

<g:javascript>

	 $(function() {
		$( "a#onwards" )
		.button()
		.click(function( event ) {
		  event;
		});
	});

</g:javascript>

</head>
<body>

	<div class="body">
		<a class="navbar" href="${contextpath }/ideology_quiz/reading/index">Reading</a>
		<a class="navbar" href="${contextpath }/ideology_quiz/ideology/index">Ideology</a>
		This is going to be the landing page for the Home page...
	</div>

	<div id="wrapper">
		<div id="stageAreaWrapper">
			<div id="stageArea">
				<div id="welcomeSA0" >
					<div id="messageSA0">
						<h4 style="text-align: center;
						padding: 3px; color: aliceblue; 
						text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000,
						 -.8px .8px 0 #000, .8px .8px 0 #000;">Welcome</h4>
						<div style="height: 219px; text-align: center; padding: 3px; background-color: darkslategray; color: aliceblue; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
							<br>
							<p>Begin your Ideoquest...<p>
							<a id="onwards" href="${contextpath}/ideology_quiz/ideology/index">Onwards!</a>
							<%-- <div id="onwards" style="color: aliceblue; text-decoration: none;" href="${contextpath}/ideology_quiz/ideology/index">Onwards!</a></div>--%>
						</div>
					</div>
					<img id="nGraphSCR" src="${resource(dir: 'images/svg-screenshots', file: 'nightingale-graph.gif')}" alt="Ideology"/>
				</div>
			</div>
			<div id="stageDir">
				<div class="sAreas" id="sA1">
				
				</div>
				<div class="sAreas" id="sA2">
				
				</div>
				<div class="sAreas" id="sA3">
				
				</div>
				<div class="sAreas" id="sA4">
				
				</div>
			</div>
		</div>
		<div id="coloClose">
			<div class="mainColo" id="colo1">
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas imperdiet posuere lorem. Cras pulvinar, tellus non ultricies eleifend, felis sapien lacinia ante, eget vestibulum ipsum lorem eget neque. Etiam turpis metus, elementum ut turpis a, aliquam pretium ante. Maecenas tristique justo leo, in suscipit nulla laoreet molestie. Nulla vehicula dolor vel felis scelerisque, nec sodales felis pellentesque. Proin laoreet sapien nec sem luctus dictum.
			</div>
			<div class="mainColo" id="colo2">
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas imperdiet posuere lorem. Cras pulvinar, tellus non ultricies eleifend, felis sapien lacinia ante, eget vestibulum ipsum lorem eget neque. Etiam turpis metus, elementum ut turpis a, aliquam pretium ante. Maecenas tristique justo leo, in suscipit nulla laoreet molestie. Nulla vehicula dolor vel felis scelerisque, nec sodales felis pellentesque. Proin laoreet sapien nec sem luctus dictum.
			</div>
			<div class="mainColo" id="colo3">
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas imperdiet posuere lorem. Cras pulvinar, tellus non ultricies eleifend, felis sapien lacinia ante, eget vestibulum ipsum lorem eget neque. Etiam turpis metus, elementum ut turpis a, aliquam pretium ante. Maecenas tristique justo leo, in suscipit nulla laoreet molestie. Nulla vehicula dolor vel felis scelerisque, nec sodales felis pellentesque. Proin laoreet sapien nec sem luctus dictum.
			</div>
		</div>
		<div id="footHome">
			This is a footer?
		</div>
	</div>
	
</body>
</html>