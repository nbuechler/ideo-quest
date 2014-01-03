<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Results</title>

<style>

h3 {
font-size: 140%;
padding-bottom: 1%;
padding-top: 2%;
}

form {
font-size: 60%;
padding-left: 10%;
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

<g:set var="radiusScale" value="${3}" />

<g:javascript>

	var data = [
        {start: 0, theta: ${anarchismTheta} / 100, color: "purple", inRadius: "0", outRadius: ${radiusScale * anarchismRadius}},
        {start: (${anarchismTheta}) / 100, theta: ${authoritarianismTheta} / 100, color: "brown", inRadius: "0", outRadius: ${radiusScale * authoritarianismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta}) / 100, theta: ${capitalismTheta} / 100, color: "gold", inRadius: "0", outRadius: ${radiusScale * capitalismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta}) / 100, theta: ${conservatismTheta} / 100, color: "blue", inRadius: "0", outRadius: ${radiusScale * conservatismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta}) / 100, theta: ${decentralismTheta} / 100, color: "lightblue", inRadius: "0", outRadius: ${radiusScale * decentralismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta}) / 100, theta: ${ecologismTheta} / 100, color: "green", inRadius: "0", outRadius: ${radiusScale * ecologismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta}) / 100, theta: ${egalitarianismTheta} / 100, color: "pink", inRadius: "0", outRadius: ${radiusScale * egalitarianismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta}) / 100, theta: ${fundamentalismTheta} / 100, color: "maroon", inRadius: "0", outRadius: ${radiusScale * fundamentalismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta} + ${fundamentalismTheta}) / 100, theta: ${liberalismTheta} / 100, color: "orange", inRadius: "0", outRadius: ${radiusScale * liberalismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta} + ${fundamentalismTheta} + ${liberalismTheta}) / 100, theta: ${radicalismTheta} / 100, color: "dimgray", inRadius: "0", outRadius: ${radiusScale * radicalismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta} + ${fundamentalismTheta} + ${liberalismTheta} + ${radicalismTheta}) / 100, theta: ${relativismTheta} / 100, color: "yellow", inRadius: "0", outRadius: ${radiusScale * relativismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta} + ${fundamentalismTheta} + ${liberalismTheta} + ${radicalismTheta} + ${relativismTheta}) / 100, theta: ${socialismTheta} / 100, color: "red", inRadius: "0", outRadius: ${radiusScale * socialismRadius}},
        {start: (${anarchismTheta} + ${authoritarianismTheta} + ${capitalismTheta} + ${conservatismTheta} + ${decentralismTheta} + ${ecologismTheta} + ${egalitarianismTheta} + ${fundamentalismTheta} + ${liberalismTheta} + ${radicalismTheta} + ${relativismTheta} + ${socialismTheta}) / 100, theta: ${supremacismTheta} / 100, color: "gray", inRadius: "0", outRadius: ${radiusScale * supremacismRadius}},
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
			.attr("transform", "translate(200,200)")
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
  
  <div id="formholder" style="margin-right: 45%; float: left;">
	Results are:
	<table id="resultsTable">
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
	
	<div>${radio01}</div>
	<div>${radio02}</div>
	<div>${radio03}</div>
	<div>${radio04}</div>
	<div>${radio05}</div>
	<div>${radio06}</div>
	<div>${radio07}</div>
	<div>${radio08}</div>
	<div>${radio09}</div>
	<div>${radio10}</div>
	<div>${radio11}</div>
	<div>${radio12}</div>
	<div>${radio13}</div>
	<div>${radio14}</div>
	<div>${radio15}</div>
	<div>${radio16}</div>
	<div>${radio17}</div>
	<div>${radio18}</div>
	<div>${radio19}</div>
	<div>${radio20}</div>
	<div>${radio21}</div>
	<div>${radio22}</div>
	<div>${radio23}</div>
	<div>${radio24}</div>
	<div>${radio25}</div>
	<div>${radio26}</div>
	<br>
	
  </div>
 <!--    <g:actionSubmit id="submitButton" value="Submit" onclick="javascript:sender()"/>
 -->
  
</body>
</html>