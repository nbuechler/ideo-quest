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
.bodyLink{
	margin: 0.3em;
	font-size: 1.3em;
	background-color: #C4C6CF;
	padding: 0.4em;
	color: rgb(47, 79, 79);
	font-weight: bold;
	border-radius: 7px;
	border: 1px solid #E5E5E5;
	text-align: center;
}

.bodyLink > a{
	color: #2F4F4F;
	text-decoration: none;
}
.bodyLink > a:hover{
	color: #DBDCE5;
}

.bodyText{
	margin: 0.1em;
	font-size: 1.3em;
	background-color: rgb(229, 229, 229);
	padding: 0.4em;
	color: rgb(47, 79, 79);
	font-weight: bold;
	border-radius: 7px;
}

#readingTable{
	margin: 10px;
}

.cellReading{
	width: 210px;
	background-color: #2F4F4F;
	float: right;
	color: #DBDCE5;
	text-decoration: none;
	font-size: .8em;
}

.cellReading > a{
	text-decoration: none;
	color: #DBDCE5;
}

.cellReading:hover{
	width: 210px;
	background-color: #DBDCE5;
	color: #2F4F4F;
	float: right;
}

.cellReading > a:hover{
	text-decoration: none;
	color: #2F4F4F;
}

.tableImg{
	border-radius: 5px;
} 

#wrapper{
	background-color: #A3A7B9;
	padding: 2.5%;
	margin: 2.5%;
	border-top-left-radius: 20px;
	min-height: 600px;
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

#overlay{
	position: absolute;
	z-index: 0;
	opacity: .5;
}

#stageAreaWrapper{
	background: -webkit-linear-gradient(left, #A3A7B9 , #D7D8E2); /* For Safari */
	background: -o-linear-gradient(right, #A3A7B9, #D7D8E2); /* For Opera 11.1 to 12.0 */
	background: -moz-linear-gradient(right, #A3A7B9, #D7D8E2); /* For Firefox 3.6 to 15 */
	background: linear-gradient(to right, #A3A7B9 , #D7D8E2); /* Standard syntax */
	
	min-height: 360px;
	border-radius: 10px;
	border-right: black solid 2px;
	border-top: black solid 2px;
	border-bottom: darkslategray dotted solid 3px;
}

#stageAreaMain{
	float: left;
	width: 80%;
	margin: 1%;
	margin-top: 2%;
	z-index: 5;
	position: relative;
}

#stageArea01{
	float: left;
	width: 80%;
	margin: 1%;
	margin-top: 2%;
	display: none;
	z-index: 5;
	position: relative;
}

#stageArea02{
	float: left;
	width: 80%;
	margin: 1%;
	margin-top: 2%;
	display: none;
	z-index: 5;
	position: relative;
}

#stageArea03{
	float: left;
	width: 80%;
	margin: 1%;
	margin-top: 2%;
	display: none;
	z-index: 5;
	position: relative;
}

#stageArea04{
	float: left;
	width: 80%;
	margin: 1%;
	margin-top: 2%;
	display: none;
	z-index: 5;
	position: relative;
}

#stageDir{
	float: left;
	width: 16%;
/* Need to figure out how to style a scroll bar
	height: 500px;
	overflow-y: scroll;
*/
	margin: 1%;
	z-index: 1;
	position: relative;
}

.sAreas{
	/*
	background-color: pink;
	border: 1px;
	border-color: black;
	border-style: solid;
	*/
	width: 70px;
	height: 70px;
	margin: 10px;
}

#welcomeSA0{
	float: right;
	margin-right: 2%;
}

#messageSA0{
	/*position: absolute;*/
	margin-top: 6%;
	margin-left: -2%;
	background-color: #DBDCE5;
	border-radius: 11px;
	border: solid 1px;
}
#messageSA1{
	/*position: absolute;*/
	margin-top: 5.9%;
	margin-left: -4%;
	background-color: #DBDCE5;
	border-radius: 11px;
	border: solid 1px;
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

#data, #info, #know{
	float: left;
	background-color: silver;
	color: aliceblue;
	width: 29%; 
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

#submit{
	float: left;
	background-color: silver;
	color: aliceblue;
	width: 29%;
	height: 18%;
	font-size: 20px; 
	border-radius: 10px; 
	text-shadow: -1.8px -1.8px 0 #000, 
	.8px -.8px 0 #000, -.8px .8px 0 #000, 
	.8px .8px 0 #000;
}

.mainPageHolder{
	height: 240px; 
	text-align: center;
	padding: 3px; 
	background-color: darkslategray; 
	color: aliceblue; 
	border-bottom-left-radius: 10px; 
	border-bottom-right-radius: 10px;
}

div.tooltip, div.tooltipTable{
	visibility: hidden;
	background-color: darkslategray;
	font-size: 100%;
	border: solid gray;
	border-width: 1px;
	padding: 10px;
	position: absolute;
	text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000, -.8px .8px 0 #000,
		.8px .8px 0 #000;
}

</style>

<g:set var="radiusScale" value="${18}" />

<g:javascript>

<!-- Nightingale Graph -->
	
	var opacityChanger = .1;
	
	var allThetaRadians = [0.6283185307179586, 0.3141592653589793, 0.6283185307179586, 0.6283185307179586, 0.6283185307179586, 0.6283185307179586, 0.3141592653589793, 0.6283185307179586, 0.6283185307179586, 0.0, 0.6283185307179586, 0.3141592653589793, 0.3141592653589793];
	var allRadiusUnits = [3.8748699676523186, 4.244707378864773, 3.8748699676523186, 3.8748699676523186, 3.8748699676523186, 3.8748699676523186, 4.244707378864773, 4.244707378864773, 3.8748699676523186, 4.244707378864773, 4.244707378864773, 4.244707378864773, 3.4657890634125006];
	var allRadiusPercentages = [9.4339622600, 5.6603773600, 9.4339622600, 9.4339622600, 9.4339622600, 9.4339622600, 5.6603773600, 11.3207547200, 9.4339622600, 0, 11.3207547200, 5.6603773600, 3.7735849100];
	var allThetaStart = 0
	
	var startColor = ["LightSlateGray", "GreenYellow", "Tomato", "Aqua", "GoldenRod", "DarkRed", "Indigo", "LightSeaGreen", "Sienna", "MediumOrchid", "Fuchsia", "ForestGreen", "GoldenRod"];
	var stopColor = ["purple", "brown","sandybrown","blue","lightblue","green","pink","maroon","orange","dimgray","DarkKhaki","red","gray"];
	
	var nameIdentStart = ["Statist", "Republican","Marxist","Progressive","Centralist","Anthropocentralist","Elitist","Pluralist","Facist","Loyalist","Ethnocentralist","Corporatist","Democrat"];
	var nameIdentStop = ["Anarchist", "Authoritarian", "Capitalist", "Conservative", "Decentralist", "Ecologist", "Egalitarianist", "Fundamentalist", "Liberal", "Radical", "Relativist", "Socialist", "Supremacist"];
	
	var ideologyStatus = [];
	
	//Build the Data of the Nightingale
	var data = [];
	
	<!-- Generate Random Integers -->
	var max = 6;
	var min = -6;
	
	var randomIdeologyScores = [];
	var randomTScores = [];
	var randomTotal = 0;
	var randomTScoreTotal = 0;
	var randomPercentages = [];
	var randomThetaRadians = [];
	var randomThetaTotal = 0;
	var randomRadiusUnits = [];
	
	for(s1=0; s1 < 13; s1++){
		var getRandomInt = Math.floor(Math.random() * (max - min + 1)) + min;
		randomIdeologyScores.push(getRandomInt);
		
		if(Math.abs(getRandomInt) == 6 || Math.abs(getRandomInt) == 5 || Math.abs(getRandomInt) == 4){
			var getThetaInt = 2;
		} else if (Math.abs(getRandomInt) == 3 || Math.abs(getRandomInt) == 2 || Math.abs(getRandomInt) == 1){
			var eitherOneOrTwo = Math.random() < 0.5 ? 1 : 2;
			var getThetaInt = eitherOneOrTwo;
		} else {
			var getThetaInt = 0;
		}
		randomTScores.push(getThetaInt)
		
		randomTotal += Math.abs(getRandomInt);
		randomTScoreTotal += Math.abs(getThetaInt);
	}
	
	for(s2=0; s2 < randomIdeologyScores.length; s2++){
		var getRandomPercentage = ((Math.abs(randomIdeologyScores[s2]))/Math.abs(randomTotal)) * 100;
		var getRandomThetaRadian = (((Math.abs(randomTScores[s2]))/Math.abs(randomTScoreTotal)) * 2 * Math.PI)
		randomPercentages.push(getRandomPercentage);
		randomThetaRadians.push(getRandomThetaRadian)
		getRadiusUnit = (Math.sqrt(getRandomPercentage/getRandomThetaRadian))
		randomThetaTotal += getRandomThetaRadian;
		randomRadiusUnits.push(getRadiusUnit)
	}
	
	
	for (i=0; i < randomIdeologyScores.length; i++){
		
		//Choose the color/opacity of the Ng slice
		if(randomIdeologyScores[i] >= 0){
			ngSliceColor = startColor[i]
			ngSliceOpacity = 1
			ngSliceName = nameIdentStart[i]
		} else if (randomIdeologyScores[i] < 0) {
			ngSliceColor = stopColor[i]
			ngSliceOpacity = 1
			ngSliceName = nameIdentStop[i]
		} else {
			ngSliceColor = "white"
			ngSliceOpacity = 1
			ngSliceName = "Unknown"
		}
	
		ideologyStatus.push(ngSliceName)

		if(i==0){
			data.push({start: allThetaStart, theta: randomThetaRadians[i], opacity: ngSliceOpacity + opacityChanger, color: ngSliceColor, inRadius: "0", outRadius: ${radiusScale} * randomRadiusUnits[i], areaPercentage:randomPercentages[i], ideologyName:ngSliceName})
		} else {
			data.push({start: allThetaStart, theta: randomThetaRadians[i], opacity: ngSliceOpacity + opacityChanger, color: ngSliceColor, inRadius: "0", outRadius: ${radiusScale} * randomRadiusUnits[i], areaPercentage:randomPercentages[i], ideologyName:ngSliceName})
		}
		allThetaStart += randomThetaRadians[i]
	}

	var arc = d3.svg.arc()
			.innerRadius(function(d, i){return d.inRadius;})
            .outerRadius(function(d, i){return d.outRadius;})
		    .startAngle(function(d, i){return d.start;})
		    .endAngle(function(d, i){return d.start + d.theta;})
			;

	var chart = d3.select("#nGRandom").append("svg:svg")
			.attr("class", "chart")
			.style("margin-left", "-110px")
			.style("margin-top", "-30px")
			.style("width", "320px")
			.style("height", "320px").append("svg:g")
			.attr("transform", "translate(218,150)")
			;

	var tooltip = d3.select("div.tooltip");
	var tooltipTable = d3.select("div.tooltipTable");

	chart.selectAll("path")
			.data(data)
			.enter().append("svg:path")
			.style("opacity", function(d,i){
				return d.opacity;
			})
			.style("fill", function(d, i){
				return d.color;
			})
			.attr("stroke", "black")
			.attr("stroke-width", "1px")
			.attr("d", arc)
			.on("mouseover", function() {
		        d3.select(this)
		        .style("opacity", .1)
		        return tooltip
		        	.style("visibility", "visible")
		        	.style("background-color", "darkslategray")//this.__data__.color)
		        	.style("color", "white")
		        	.text(this.__data__.areaPercentage.toFixed(2) + "% " + this.__data__.ideologyName)
				;
		    })
		    .on("mouseenter", function(d,i) {
					d3.selectAll("." + this.__data__.ideologyName)
					.style("opacity", .4)
					.style("fill", this.__data__.color)
					.style("stroke", this.__data__.color)
					.style("background-color", this.__data__.color)
					d3.select(this)
					.style("opacity", .1)
					;
				})
			.on("mouseleave", function(d,i) {
				d3.selectAll("." + this.__data__.ideologyName)
				.style("opacity", 1)
				.style("fill", this.__data__.color)
				.style("stroke", "black")
				.style("background-color", "white")
				;
			})
		    .on('mousemove', function(d) {
				return tooltip
		            .style("top", (d3.event.pageY - 324) + "px")
		            .style("left", (d3.event.pageX - 500) + "px");
			})
		    .on("mouseout", function() {
		        d3.select(this)
		        .style("opacity", function(d,i){
				return d.opacity;
				})
				return tooltip
					.style("visibility", "hidden")
				;
		    })
			;

</g:javascript>


<g:javascript>

		$(function() {
			$( "a#onwards" )
			.button()
			.click(function( event ) {
			  event;
			});
		});
		$(function() {
			$( "a#data" )
			.button()
			.click(function( event ) {
			  event;
			});
		});
		$(function() {
			$( "a#info" )
			.button()
			.click(function( event ) {
			  event;
			});
		});
		$(function() {
			$( "a#know" )
			.button()
			.click(function( event ) {
			  event;
			});
		});
		$(function() {
			$( "a#submit" )
			.button()
			.click(function( event ) {
			  event;
			});
		});

	d3.select("#sA1")
		.on("mouseover", function (){
		d3.select("#stageArea01")
			.style("display", "inline")
			
			d3.select("#stageAreaMain")
			.style("display", "none")
			d3.select("#stageArea02")
			.style("display", "none")
			d3.select("#stageArea03")
			.style("display", "none")
			d3.select("#stageArea04")
			.style("display", "none")
		});
			
	d3.select("#sA2")
		.on("mouseover", function (){
		d3.select("#stageArea02")
			.style("display", "inline")
			
			d3.select("#stageAreaMain")
			.style("display", "none")
			d3.select("#stageArea01")
			.style("display", "none")
			d3.select("#stageArea03")
			.style("display", "none")
			d3.select("#stageArea04")
			.style("display", "none")
		});
	
	d3.select("#sA3")
		.on("mouseover", function (){
		d3.select("#stageArea03")
			.style("display", "inline")
			
			d3.select("#stageAreaMain")
			.style("display", "none")
			d3.select("#stageArea01")
			.style("display", "none")
			d3.select("#stageArea02")
			.style("display", "none")
			d3.select("#stageArea04")
			.style("display", "none")
		});
	
	d3.select("#sA4")
		.on("mouseover", function (){
		d3.select("#stageArea04")
			.style("display", "inline")
			
			d3.select("#stageAreaMain")
			.style("display", "none")
			d3.select("#stageArea01")
			.style("display", "none")
			d3.select("#stageArea02")
			.style("display", "none")
			d3.select("#stageArea03")
			.style("display", "none")
		});
	
	d3.selectAll(".tableImg")
		.on("mouseover", function () {
		return tooltipTable
			.style("visibility", "visible")
			.style("margin-top", this.offsetTop/50 + "%")
			.style("margin-left", this.offsetTop/50 + "%")
			.text(this.alt)
			;
		})
		.on("mouseout", function () {
		return tooltipTable
			.style("visibility", "hidden")
			;
		})
		;
	

</g:javascript>

</head>
<body>

	<div class="body">
		<a class="navbar" href="${contextpath }/ideology_quiz/reading/index">Reading</a>
		<a class="navbar" href="${contextpath }/ideology_quiz/ideology/index">Ideology</a>
	</div>

	<div id="wrapper">
		<div id="stageAreaWrapper">
			<div id="overlay"><img style="opacity: .1" src="${resource(dir: 'images/backgrounds', file: 'hexagon_background.gif')}"/></div>
			<div id="stageDir">
				<div class="sAreas" id="sA1">
				<img width="80px;" height="69.25px;" src="${resource(dir: 'images/widgets', file: 'nav-visualize.gif')}" alt="Ideology"/>
				</div>
				<div class="sAreas" id="sA2">
				<img width="80px;" height="69.25px;" src="${resource(dir: 'images/widgets', file: 'nav-mission.gif')}" alt="Ideology"/>
				</div>
				<div class="sAreas" id="sA3">
				<img width="80px;" height="69.25px;" src="${resource(dir: 'images/widgets', file: 'nav-readings.gif')}" alt="Ideology"/>
				</div>
				<div class="sAreas" id="sA4">
				<img width="80px;" height="69.25px;" src="${resource(dir: 'images/widgets', file: 'nav-feedback.gif')}" alt="Ideology"/>
				</div>
			</div>
			<div id="stageAreaMain">
				<div id="welcomeSA0" >
					<div id="messageSA0" style="width: 185px; float: left;">
						<h4 style="text-align: center;
						padding: 3px; color: aliceblue; 
						text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000,
						 -.8px .8px 0 #000, .8px .8px 0 #000;">Welcome</h4>
						<div class="mainPageHolder">
							<br>
							<p><b>Begin your Ideoquest</b><p>
							<a id="onwards" href="${contextpath}/ideology_quiz/ideology/index">Onwards!</a>
							<%-- <div id="onwards" style="color: aliceblue; text-decoration: none;" href="${contextpath}/ideology_quiz/ideology/index">Onwards!</a></div>--%>
						</div>
					</div>
					<div class="tooltip">Errorror</div>
					<div id="messageSA0" style="width: 260px; float: right;">
						<h4 style="text-align: center;
						padding: 3px; color: aliceblue; 
						text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000,
						 -.8px .8px 0 #000, .8px .8px 0 #000;">Maybe this is your ideology!</h4>
						<div id="nGRandom" class="mainPageHolder"></div>
					</div>
				</div>
			</div>
			<div id="stageArea01">
				<div id="welcomeSA0" >
					<div id="messageSA0" style="width: 185px; float: left;">
						<h4 style="text-align: center;
						padding: 3px; color: aliceblue; 
						text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000,
						 -.8px .8px 0 #000, .8px .8px 0 #000;">Welcome</h4>
						<div class="mainPageHolder">
							<br>
							<p><b>Begin your Ideoquest</b><p>
							<a id="onwards" href="${contextpath}/ideology_quiz/ideology/index">Onwards!</a>
							<%-- <div id="onwards" style="color: aliceblue; text-decoration: none;" href="${contextpath}/ideology_quiz/ideology/index">Onwards!</a></div>--%>
						</div>
					</div>
					<div id="messageSA0" style="width: 260px; float: right;">
						<h4 style="text-align: center;
						padding: 3px; color: aliceblue; 
						text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000,
						 -.8px .8px 0 #000, .8px .8px 0 #000;">Visualize your Ideology!</h4>
						<div id="tableExamples" class="mainPageHolder">
							<div class="tooltipTable">Errorror</div>
							<table style="margin-top: 25px; border: medium none;">
								<tr>
									<td>
									<img class="tableImg" style="float: right;" width="90px;" height="72px;" src="${resource(dir: 'images/svg-screenshots', file: 'bar-chart.jpg')}" alt="Bar Chart"/>
									</td>
									<td>
									<img class="tableImg" width="90px;" height="72px;" src="${resource(dir: 'images/svg-screenshots', file: 'scatter-plot.jpg')}" alt="Scatter Plot"/>
									</td>
								</tr>
								<tr>
									<td>
									<img class="tableImg" style="float: right;" width="90px;" height="72px;" src="${resource(dir: 'images/svg-screenshots', file: 'einhundert-ideen.jpg')}" alt="Ein Hundert Ideen"/>
									</td>
									<td>
									<img class="tableImg" width="90px;" height="72px;" src="${resource(dir: 'images/svg-screenshots', file: 'nightingale-graph.jpg')}" alt="Nightingale Graph"/>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div id="stageArea02">
				<div id="welcomeSA0" >
					<div id="messageSA1" style="width: 455px; float: right;">
						<h4 style="text-align: center;
						padding: 3px; color: aliceblue; 
						text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000,
						 -.8px .8px 0 #000, .8px .8px 0 #000;">To courageously discover ideas!</h4>
						<div id="nGRandom" class="mainPageHolder">
						<br>
						<p><b>Harness the data at your finger tips, develop information, and discover new sources of knowledge!</b><p>
						<a id="data" href="${contextpath}/ideology_quiz/ideology/index">Data!</a>
						<a id="info" href="${contextpath}/ideology_quiz/ideology/index">Info!</a>
						<a id="know" href="${contextpath}/ideology_quiz/ideology/index">Know!</a>
						</div>
					</div>
				</div>
			</div>
			<div id="stageArea03">
				<div id="welcomeSA0" >
					<div id="messageSA1" style="width: 455px; float: right;">
						<h4 style="text-align: center;
						padding: 3px; color: aliceblue; 
						text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000,
						 -.8px .8px 0 #000, .8px .8px 0 #000;"><b>Read and Learn about Ideologies!</b></h4>
						<div id="nGRandom" class="mainPageHolder">
							<div id="readingTable">
								<div id="row01">

	
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">conservatism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">centralism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">capitalism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">authoritarianism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">anthropocentrism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">anarchism</div></a>
								</div>
								<div id="row02">
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">elitism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">egalitarianism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">ecologism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">democratism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">decentralism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">corporatism</div></a>
								</div>
								<div id="row03">
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">marxism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">loyalism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">liberalism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">fundamentalism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">fascism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">ethnocentrism</div></a>
								</div>
								<div id="row04">
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">statism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">supremacism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">socialism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">republicanism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">relativism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">radicalism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">progressivism</div></a>
									<a href="${contextpath}/ideology_quiz/reading/index"><div class="cellReading">pluralism</div></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="stageArea04">
				<div id="welcomeSA0" >
					<div id="messageSA1" style="width: 455px; float: right;">
						<h4 style="text-align: center;
						padding: 3px; color: aliceblue; 
						text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000,
						 -.8px .8px 0 #000, .8px .8px 0 #000;">Share your ideas!</h4>
						<div id="nGRandom" class="mainPageHolder">
						<br>
						<input style="width: 91%; height: 60%;"></input>
						<a id="submit" style="float: right; margin-top: 3%; margin-right: 3%;" href="${contextpath}/ideology_quiz/ideology/index">Submit!</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="coloClose">
			<div class="mainColo" id="colo1">
				<a id="onwards" href="${contextpath}/ideology_quiz/ideology/index">Begin your<br> Ideoquest!</a>
			</div>
			<div class="mainColo" id="colo2">
				<h3 style="
				text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000,
							 -.8px .8px 0 #000, .8px .8px 0 #000;
				text-align: center;">To courageously discover ideas!</h3>
				<div class="bodyText">
				Ideoquest is about new ideas.
				Anyone can start out with knowing that their 
				ideology isn't just a single fixed point on a specturm.
				That data will inevitably turn into knowledge.</di>
				</div>
			</div>
			<div class="mainColo" id="colo3">
				<h3 style="
				text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000,
							 -.8px .8px 0 #000, .8px .8px 0 #000;
				text-align: center;">Important Links</h3>
				<div class="bodyLink"><a href="#">Login to your Profile</a></div>
				<div class="bodyLink"><a href="#">Discover new articles</a></div>
				<div class="bodyLink"><a href="#">Join like-minded groups</a></div>
				<div class="bodyLink"><a href="#">Search for something</a></div>
			</div>
			</div>
		</div>
	</div>
	<div id="footHome">
			© 2014 IdeoQuest. All Rights Reserved. | Reproduction permitted via <a href="http://www.gnu.org/licenses/gpl.html">GPLv3 GENERAL PUBLIC LICENSE</a>
	</div>
</body>
</html>