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
</style>

<g:javascript src="d3.v3.js" />

</head>

<g:set var="radiusScale" value="${30}" />

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
		        	//.style("opacity", .2)
		        	.text(this.__data__.areaPercentage.toFixed(2) + "% " + this.__data__.ideologyName)
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
				.append("tr").append("td")
				.text(allRadiusPercentages[k].toFixed(2) + "% " + ideologyStatus[k])
				.style("text-align", "right")
				.style("font-size", "80%")
			;
		}
	}

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
	

</g:javascript>

<g:javascript>
	$(function() {
		$("#question03").buttonset();
	});
	
	function sender() {
	document.forms["form03"].submit();
	return true;
	}

</g:javascript>

<g:javascript>
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
			<tr>
				<td style="text-align: right; font-size: 85%;">Based on your
					responses, we discovered the following:</td>
			</tr>
		</table>
		<%-- DEPRICATED
		<table id="resultsTable" style="width: 66%; float: left;">
			<tr><td class="ideologystatus">${anarchismStatus}</td><td>anarchist</td><td>${anarchismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${authoritarianismStatus}</td><td>authoritarian</td><td>${authoritarianismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${capitalismStatus}</td><td>capitalist</td><td>${capitalismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${conservatismStatus}</td><td>conservative</td><td>${conservatismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${decentralismStatus}</td><td>decentralist</td><td>${decentralismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${ecologismStatus}</td><td>ecologist</td><td>${ecologismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${egalitarianismStatus}</td><td>egalitarianist</td><td>${egalitarianismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${fundamentalismStatus}</td><td>fundamentalist</td><td>${fundamentalismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${liberalismStatus}</td><td>liberal</td><td>${liberalismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${radicalismStatus}</td><td>radical</td><td>${radicalismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${relativismStatus}</td><td>relativist</td><td>${relativismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${socialismStatus}</td><td>socialist</td><td>${socialismPercent}% of your Ideology</td></tr>
			<tr><td class="ideologystatus">${supremacismStatus}</td><td>supremacist</td><td>${supremacismPercent}% of your Ideology</td></tr>
		</table>
		--%>

		<div id="accordion"
			style="font-size: .6em; text-align: right; width: 460px; float: left;">
			<h3>Nightingale Graph</h3>
			<div>
				<div id="nGraph">
				</div>
				<div class="tooltip">Errorror</div>
			</div>
			<h3>Graph B</h3>
			<div>
				<p>Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum
					Vivamus non quam. In suscipit faucibus urna.</p>
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