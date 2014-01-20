<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Results</title>

<style>
.leftIsm {
	margin-top: 16%;
	font-size: 72%;
}

.rightIsm {
	margin-top: 16%;
	font-size: 72%;
}

.ideologystatus {
	text-align: right;
}

#resultsTable {
	font-size: 80%;
}

div.tooltip {
	visibility: hidden;
	background-color: lightblue;
	font-size: 100%;
	border: solid gray;
	border-width: 1px;
	padding: 10px;
	position: absolute;
	text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000, -.8px .8px 0 #000,
		.8px .8px 0 #000;
}

div.tooltipSquare {
	visibility: hidden;
	background-color: lightblue;
	font-size: 100%;
	border: solid gray;
	border-width: 1px;
	padding: 10px;
	position: absolute;
	text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000, -.8px .8px 0 #000,
		.8px .8px 0 #000;
}
</style>

<g:javascript src="d3.v3.js" />

</head>

<g:set var="radiusScale" value="${25}" />

<g:javascript>

	<!-- Nightingale Graph -->
	
	var opacityChanger = .1;
	
	var allThetaRadians = ${allThetaRadians};
	var allRadiusUnits = ${allRadiusUnits};
	var allRadiusPercentages = ${allRadiusPercentages}
	var allThetaStart = 0
	
	var ideologiesCorrelates = ${ideologiesCorrelates};
	var ideologies = ${ideologies};
	
	var startColor = ["LightSlateGray", "GreenYellow", "Tomato", "Aqua", "GoldenRod", "DarkRed", "Indigo", "LightSeaGreen", "Sienna", "MediumOrchid", "Fuchsia", "ForestGreen", "GoldenRod"];
	var stopColor = ["purple", "brown","gold","blue","lightblue","green","pink","maroon","orange","dimgray","yellow","red","gray"];
	
	var nameIdentStart = ["Statist", "Republican","Marxist","Progressive","Centralist","Anthropocentralist","Elitist","Pluralist","Facist","Loyalist","Ethnocentralist","Corporatist","Democrat"];
	var nameIdentStop = ["Anarchist", "Authoritarian", "Capitalist", "Conservative", "Decentralist", "Ecologist", "Egalitarianist", "Fundamentalist", "Liberal", "Radical", "Relativist", "Socialist", "Supremacist"];
	
	var ideologyStatus = [];
	
	//Build the Data of the Nightingale
	var data = [];
	
	for (i=0; i < allThetaRadians.length; i++){
		
		//Choose the color/opacity of the Ng slice
		if(ideologiesCorrelates[i] > 0){
			ngSliceColor = startColor[i]
			ngSliceOpacity = ideologiesCorrelates[i]/6
			ngSliceName = nameIdentStart[i]
		} else if (ideologies[i] > 0) {
			ngSliceColor = stopColor[i]
			ngSliceOpacity = ideologies[i]/6
			ngSliceName = nameIdentStop[i]
		} else {
			ngSliceColor = "black"
			ngSliceOpacity = 1
			ngSliceName = "Unknown"
		}
	
		ideologyStatus.push(ngSliceName)
	
		if(i==0){
			data.push({start: allThetaStart, theta: allThetaRadians[i], opacity: ngSliceOpacity + opacityChanger, color: ngSliceColor, inRadius: "0", outRadius: ${radiusScale} * allRadiusUnits[i], areaPercentage:allRadiusPercentages[i], ideologyName:ngSliceName})
		} else {
			data.push({start: allThetaStart, theta: allThetaRadians[i], opacity: ngSliceOpacity + opacityChanger, color: ngSliceColor, inRadius: "0", outRadius: ${radiusScale} * allRadiusUnits[i], areaPercentage:allRadiusPercentages[i], ideologyName:ngSliceName})
		}
		allThetaStart += allThetaRadians[i]
	}

	var arc = d3.svg.arc()
			.innerRadius(function(d, i){return d.inRadius;})
            .outerRadius(function(d, i){return d.outRadius;})
		    .startAngle(function(d, i){return d.start;})
		    .endAngle(function(d, i){return d.start + d.theta;})
			;

	var chart = d3.select("#nGraph").append("svg:svg")
			.attr("class", "chart")
			.style("width", "420px")
			.style("height", "320px").append("svg:g")
			.attr("transform", "translate(218,150)")
			;

	var tooltip = d3.select("div.tooltip");
	var tooltipSquare = d3.select("div.tooltipSquare")

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
		            .style("top", (d3.event.pageY + 16) + "px")
		            .style("left", (d3.event.pageX + 16) + "px");
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

<!-- Table -->
	for(k=0; k < allRadiusPercentages.length; k++){
		if(ideologyStatus[k] != "Unknown"){
			d3.select("#resultsTable")
				.append("tr").attr("class", ideologyStatus[k])
				;
			d3.select("." + ideologyStatus[k]).append("td")
				.text(allRadiusPercentages[k].toFixed(2) + "%")
				.style("text-align", "right")
				.style("font-size", "100%")
				;
			d3.select("." + ideologyStatus[k]).append("td")
			.text(ideologyStatus[k])
			.style("text-align", "left")
			.style("font-size", "100%")
				;
		}
	}
	
	d3.select("#resultsTable")
		.style("margin-top", 4.3 + "%")

<!-- Spectrums -->

	<!-- Define the startColor array and stopColor array -->

	var w = 100,
	    h = 10;
	    hpadding = 35;
	
	var svg = d3.select("#onethreeGraph").append("svg:svg")
	    .attr("width", w + "%")
	    .attr("height", (h + hpadding) * 12);
	
	for (i = 1; i < 14; i++){
		
		var nextRectHeight = hpadding * i;
	
		var gradient = svg.append("svg:gradient")
		  .append("svg:linearGradient")
		    .attr("id", "gradient" + i)
		    .attr("x1", "0%")
		    .attr("x2", "100%")
		    .attr("spreadMethod", "pad");
	
		gradient.append("svg:stop")
		    .attr("offset", "-20%")
		    .attr("stop-color", "white")
		    .attr("stop-opacity", 1);
		
		gradient.append("svg:stop")
		    .attr("offset", "100%")
		    .attr("stop-color", (stopColor[i-1]))
		    .attr("stop-opacity", 1);
		    
		svg.append("svg:rect")
		    .attr("width", w/2 + "%")
		    .attr("height", h)
		    .attr("transform", "translate(335," + nextRectHeight + ")")
		    .style("fill", "url(#gradient" + i + ")");
		
		var gradientC = svg.append("svg:gradientC")
		  .append("svg:linearGradient")
		    .attr("id", "gradientC" + i)
		    .attr("x1", "-20%")
		    .attr("x2", "100%")
		    
		    .attr("spreadMethod", "pad");
	
		gradientC.append("svg:stop")
		    .attr("offset", "0%")
		    .attr("stop-color", (startColor[i-1]))
		    .attr("stop-opacity", 1);
		
		gradientC.append("svg:stop")
		    .attr("offset", "100%")
		    .attr("stop-color", "white")
		    .attr("stop-opacity", 1);
		    
		svg.append("svg:rect")
		    .attr("width", w/2 + "%")
		    .attr("height", h)
		    .attr("transform", "translate(0," + nextRectHeight + ")")
		    .style("fill", "url(#gradientC" + i + ")");
		    
		<!-- Overlay based on the percentage of an Correlate ideology //change the width -->    
		svg.append("svg:rect")
			.attr("width", ((100 - (ideologiesCorrelates[i-1]/6) * 100)) /2 + "%")
			.attr("height", h)
			.attr("transform", "translate(0," + nextRectHeight + ")")
			.style("fill", "white")
			.style("opacity", .90);
		
		<!-- Overlay based on the percentage of an ideology //change the translation and the width-->    
		svg.append("svg:rect")
			.attr("width", ((100 - (ideologies[i-1]/6) * 100)) /2 + "%")
			.attr("height", h)
			.attr("transform", "translate(" + (337 + (55 * (ideologies[i-1])) + ((5/6) * (ideologies[i-1]))) + "," + nextRectHeight + ")")
			/*
			For reference
			335 translation is half of the whole spectrum, or the zero position of the rightIsms
			505 translation is whole of the whole spectrum, or the one position of the rightIsms
			
			w/2 will cover distance from zero position to one position
			w/4 will cover distance from zero position to half the distance between zero position and one postion
			
			*/
			.style("fill", "white")
			.style("opacity", .90);
			
		<!-- Rectangle tick marks, space 55 + 5/6 //change the translation and the width-->    
		for(j = 0; j < 13; j++){
			svg.append("svg:rect")
				.attr("width", .1 + "%")
				.attr("height", h)
				.attr("transform", "translate(" + ((110 + 10/6) * (j)) + "," + nextRectHeight + ")")
				.style("fill", "black")
				.style("opacity", 1);
		}
	}

<!-- One Hundred -->
	var w1H = 320;
	var h1H = 320;

<!-- Calculate whole percentages and compensate for rounding. -->
	var squareUnit = [];
	var roundedStore = 0;
	var squareUnitSum = 0;
	
	
	for (sqU = 0; sqU < allRadiusPercentages.length; sqU++){
		if(allRadiusPercentages[sqU] != 0){
			if((allRadiusPercentages[sqU]-(allRadiusPercentages[sqU].toFixed(0))) > 0){
				roundedStore += (allRadiusPercentages[sqU]-(allRadiusPercentages[sqU].toFixed(0)))
			}
			if(roundedStore < 2){
			squareUnit.push(allRadiusPercentages[sqU].toFixed(0))
			}
			if(roundedStore > 2){
			squareUnit.push((Math.ceil(allRadiusPercentages[sqU])).toString())
			roundedStore = 0;
			
			}
		} else {
			squareUnit.push("0")
		}
	}
	
	var colorRowAll = [];
	var colorRow = [];
	
	var ideoRowAll = [];
	var ideoRow = [];
	
	var percRowAll = [];
	var percRow = [];
	
	var colorCounter = 0;
	for(cSU = 0; cSU < squareUnit.length; cSU++){
	
		<!-- Is it the ideology or the ideologyCorrelate? -->
		if(ideologies[cSU] >= 0){
			ideOrIdeCor = startColor
		}
		if(ideologiesCorrelates[cSU] == 0){
			ideOrIdeCor = stopColor
		}
		
		for(cIdeologyU = 0; cIdeologyU < squareUnit[cSU]; cIdeologyU++){
			colorCounter += 1
			<!-- Put colors in a row until it is full -->
			if(colorRow.length < 10){
			colorRow.push(ideOrIdeCor[cSU]);
			
			ideoRow.push(ideologyStatus[cSU]);
			percRow.push(allRadiusPercentages[cSU]);
			
			} else if (colorRow.length == 10){
			<!-- Put the full row with all the others, and then empty it; and then push the color-->
			colorRowAll.push(colorRow)
			
			ideoRowAll.push(ideoRow);
			percRowAll.push(percRow);
			
			var colorRow = [];
			
			var ideoRow = [];
			var percRow = [];
			
			colorRow.push(ideOrIdeCor[cSU]);
			
			ideoRow.push(ideologyStatus[cSU]);
			percRow.push(allRadiusPercentages[cSU]);
			}
		} 
	}
	if (colorCounter <= 100) {
			<!-- If it is an x number short, add more of the last color until full -->
			for(addMore = 0; addMore < colorCounter; addMore++){
				colorRow.push(ideOrIdeCor[startColor.length-1])
				
				ideoRow.push(ideologyStatus[startColor.length-1]);
				percRow.push(allRadiusPercentages[startColor.length-1]);
			}
			colorRowAll.push(colorRow)
			
			ideoRowAll.push(ideoRow);
			percRowAll.push(percRow);
		}
	
	var svg = d3.select("#onehundredGraph").append("svg:svg")
	    .attr("width", w1H)
	    .attr("height", h1H)
	    .style("margin-left", "50px")
	    .style("margin-right", "50px")
	    .style("background-color", "white");
	
	<!-- Choose the row to color -->
	for (oC = 0; oC < 10; oC++){
		var theColorRow = colorRowAll[oC];
		
		var theIdeoRow = ideoRowAll[oC];
		var thePercRow = percRowAll[oC];
	<!-- Choose the cell of the row to color -->
		for(oR = 0; oR < 10; oR++){    
			svg.append("svg:rect")
				.data([{color: theColorRow[oR], squareName: theIdeoRow[oR], squarePercentage: thePercRow[oR]}])
				.attr("width", w1H/10)
			    .attr("height", h1H/10)
			    .attr("class", theIdeoRow[oR])
			    .style("fill", theColorRow[oR])
			    .style("stroke-width", "1px")
			    .style("stroke", "black")
				.attr("transform", "translate(" + ((w1H/10) * oR) + "," + ((h1H/10) * oC) + ")")
				
				.on("mouseover", function(d,i) {
					d3.select(this)
					return tooltipSquare
			        	.style("visibility", "visible")
			        	.style("background-color", "darkslategray")//this.__data__.color)
			        	.style("color", "white")
			        	.text(this.__data__.squarePercentage.toFixed(2) + "% " + this.__data__.squareName)
			        	;
				})
				.on('mousemove', function(d) {
					return tooltipSquare
			            .style("top", (d3.event.pageY + 16) + "px")
			            .style("left", (d3.event.pageX + 16) + "px")
			            ;
				})
				.on("mouseout", function() {
			        d3.select(this)
			        .style("opacity", 1)
				    return tooltipSquare
						.style("visibility", "hidden")
					;
		    	})
		    	.on("mouseenter", function(d,i) {
					d3.selectAll("." + this.__data__.squareName)
					.style("opacity", .4)
					.style("fill", this.__data__.color)
					.style("stroke", this.__data__.color)
					.style("background-color", this.__data__.color)
					d3.select(this)
					.style("opacity", .1)
					;
				})
				.on("mouseleave", function(d,i) {
					d3.selectAll("." + this.__data__.squareName)
					.style("opacity", 1)
					.style("fill", this.__data__.color)
					.style("stroke", "black")
					.style("background-color", "white")
					;
				})
				;
		}
	}

</g:javascript>

<g:javascript>
	$(function() {
		$("#question03").buttonset();
	});
	
	function sender() {
	document.forms["form03"].submit();
	return true;
	}

	$(function() {
		$( "#accordion" ).accordion({
		});
	});
</g:javascript>

<body>

	<div class="body">
		<a href="${contextpath }/ideology_quiz/ideology/index">Home</a>
	</div>
	<div id="formholder" style="margin-left: 0%;">
		<table id="resultsTable" style="width: 46%; float: left;">
		</table>

		<div id="accordion"
			style="font-size: .6em; text-align: right; width: 460px; float: left;">
			<h3>Nightingale Graph</h3>
			<div>
				<div id="nGraph">
				</div>
				<div class="tooltip">Errorror</div>
				<div style="text-align: center;">*Drawn to scale</div>
			</div>
			<h3>Ein Hundert Ideen</h3>
			<div>
				<div id="onehundredGraph">
				</div>
				<div class="tooltipSquare">Errorror</div>
				<div style="text-align: center;">*Rounding approximations possible</div>
			</div>
			<h3>Graph C</h3>
			<div>
				<p>Nam enim risus, molestie et, porta ac, aliquam ac, risus.
					nisi, eu iaculis leo purus venenatis dui.</p>
			</div>
			<h3>Graph D</h3>
			<div>
				<p>Cras dictum. Pellentesque habitant morbi tristique senectus
					et per conubia nostra, per inceptos himenaeos.</p>
			</div>
		</div>

	</div>

	<div id="spectrumholder" style="margin-top: 40%;">
		<div
			style="width: 13%; float: left; text-align: right; margin-top: 1.3%;">
			<div class="leftIsm">Statism</div>
			<div class="leftIsm">Republicanism</div>
			<div class="leftIsm">Marxism</div>
			<div class="leftIsm">Progressivism</div>
			<div class="leftIsm">Centralism</div>
			<div class="leftIsm">Anthropocentrism</div>
			<div class="leftIsm">Elitism</div>
			<div class="leftIsm">Pluralism</div>
			<div class="leftIsm">Facism</div>
			<div class="leftIsm">Loyalism</div>
			<div class="leftIsm">Ethnocentrism</div>
			<div class="leftIsm">Corporatism</div>
			<div class="leftIsm">Democratism</div>
		</div>
		<div id="onethreeGraph"
			style="width: 70%; margin-right: 15%; margin-left: 15%;"></div>
		<div style="width: 13%; float: right; margin-top: -55.3%;">
			<div class="rightIsm">Anarchism</div>
			<div class="rightIsm">Authoritarianism</div>
			<div class="rightIsm">Capitalism</div>
			<div class="rightIsm">Conservatism</div>
			<div class="rightIsm">Decentralism</div>
			<div class="rightIsm">Ecologism</div>
			<div class="rightIsm">Egalitarianism</div>
			<div class="rightIsm">Fundamentalism</div>
			<div class="rightIsm">Liberalism</div>
			<div class="rightIsm">Radicalism</div>
			<div class="rightIsm">Relativism</div>
			<div class="rightIsm">Socialism</div>
			<div class="rightIsm">Supremacism</div>
		</div>
	</div>
</body>
</html>