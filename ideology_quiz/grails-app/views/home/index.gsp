<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>

<style>

#wrapper{
	background-color: red;
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

</style>

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
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas imperdiet posuere lorem. Cras pulvinar, tellus non ultricies eleifend, felis sapien lacinia ante, eget vestibulum ipsum lorem eget neque. Etiam turpis metus, elementum ut turpis a, aliquam pretium ante. Maecenas tristique justo leo, in suscipit nulla laoreet molestie. Nulla vehicula dolor vel felis scelerisque, nec sodales felis pellentesque. Proin laoreet sapien nec sem luctus dictum.
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