<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Results</title>

<style>

.leftIsm{
margin-top: 16%;
font-size: 72%;
}

.rightIsm{
margin-top: 16%;
font-size: 72%;
}

.ideologystatus {
text-align: right;
}

#resultsTable {
font-size: 80%;
}

</style>

<g:javascript src="d3.v3.js" />

</head>

<g:set var="radiusScale" value="${20}" />

<g:javascript>

<!-- Nightingale Graph -->
	var data = [
        {start: 0, theta: ${anarchismTheta}, color: "purple", inRadius: "0", outRadius: ${radiusScale * anarchismRadius}},
        {start: (${anarchismTheta}), theta: ${authoritarianismTheta}, color: "brown", inRadius: "0", outRadius: ${radiusScale * authoritarianismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta}), theta: ${capitalismTheta}, color: "gold", inRadius: "0", outRadius: ${radiusScale * capitalismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta}), theta: ${conservatismTheta}, color: "blue", inRadius: "0", outRadius: ${radiusScale * conservatismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta}), theta: ${decentralismTheta}, color: "lightblue", inRadius: "0", outRadius: ${radiusScale * decentralismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta}), theta: ${ecologismTheta}, color: "green", inRadius: "0", outRadius: ${radiusScale * ecologismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta}), theta: ${egalitarianismTheta}, color: "pink", inRadius: "0", outRadius: ${radiusScale * egalitarianismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta}), theta: ${fundamentalismTheta}, color: "maroon", inRadius: "0", outRadius: ${radiusScale * fundamentalismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta} + ${fundamentalismTheta}), theta: ${liberalismTheta}, color: "orange", inRadius: "0", outRadius: ${radiusScale * liberalismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta} + ${fundamentalismTheta} + ${liberalismTheta}), theta: ${radicalismTheta}, color: "dimgray", inRadius: "0", outRadius: ${radiusScale * radicalismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta} + ${fundamentalismTheta} + ${liberalismTheta} + ${radicalismTheta}), theta: ${relativismTheta}, color: "yellow", inRadius: "0", outRadius: ${radiusScale * relativismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta} + ${fundamentalismTheta} + ${liberalismTheta} + ${radicalismTheta} + ${relativismTheta}), theta: ${socialismTheta}, color: "red", inRadius: "0", outRadius: ${radiusScale * socialismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta} + ${fundamentalismTheta} + ${liberalismTheta} + ${radicalismTheta} + ${relativismTheta} + ${socialismTheta}), theta: ${supremacismTheta}, color: "gray", inRadius: "0", outRadius: ${radiusScale * supremacismRadius}},
        ];


	var arc = d3.svg.arc()
			.innerRadius(function(d, i){return d.inRadius;})
            .outerRadius(function(d, i){return d.outRadius;})
		    .startAngle(function(d, i){return d.start;})
		    .endAngle(function(d, i){return d.start + d.theta;})
			;

	var chart = d3.select("#nGraph").append("svg:svg")
			.attr("class", "chart")
			.attr("width", 420)
			.attr("height", 420).append("svg:g")
			.attr("transform", "translate(170,150)")
			;

	chart.selectAll("path")
			.data(data)
			.enter().append("svg:path")
			.style("fill", function(d, i){
				return d.color;
			})
			.attr("d", arc)
			;

</g:javascript>

<g:javascript>

<!-- Spectrums -->

	<!-- Define the startColor array and stopColor array -->

	var startColor = ["LightSlateGray", "GreenYellow", "Tomato", "Aqua", "GoldenRod", "DarkRed", "Indigo", "LightSeaGreen", "Sienna", "MediumOrchid", "Fuchsia", "ForestGreen", "GoldenRod"];
	var stopColor = ["purple", "brown","gold","blue","lightblue","green","pink","maroon","orange","dimgray","yellow","red","gray"];

	var ideologiesCorrelates = ${ideologiesCorrelates};
	var ideologies = ${ideologies};

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
			.style("opacity", .95);
		
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
			.style("opacity", .95);
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

<body>
<div class="body">
  <a href="${contextpath }/ideology_quiz/ideology/index">Home</a>
  </div>
  
  <div id="formholder" style="margin-left: 0%;">
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
		
	   <div id="nGraph" style="width: 320px; height: 320px; float: right;"> </div> 

  </div>
  
  <div id="spectrum holder" style="margin-top: 45%;">
	  <div style="width: 13%; float: left; text-align: right; margin-top: 1.3%;">
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
	  <div id="onethreeGraph" style="width: 70%; margin-right: 15%; margin-left: 15%;"> </div> 
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