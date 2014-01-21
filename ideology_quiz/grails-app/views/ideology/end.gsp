<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<meta name="layout" content="main" />
<title>Results</title>

<style>
#instructions {
	margin: 2.5%;
	padding: 2.5%;
	padding-bottom: 4%;
	background-color: aliceblue;
	font-size: 80%;
}

.ui-dialog-title {
	font-size: 95%;
	text-shadow: -.8px -.8px 0 #000, .8px -.8px 0 #000, -.8px .8px 0 #000,
		.8px .8px 0 #000;
}

.ism {
	margin-top: 16%;
	font-size: 72%;
}

.ideologystatus {
	text-align: right;
}

#resultsTable {
	font-size: 80%;
}


div.tooltip, div.tooltipBar, div.tooltipPlot, div.tooltipSquare, div.tooltipGeneral {
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

div.ttNG, div.ttOH, div.ttBC, div.ttSP{
	visibility: hidden;
	z-index: 9999;
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
	var stopColor = ["purple", "brown","sandybrown","blue","lightblue","green","pink","maroon","orange","dimgray","DarkKhaki","red","gray"];
	
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
	var tooltipSquare = d3.select("div.tooltipSquare");
	var tooltipBar = d3.select("div.tooltipBar");
	var tooltipPlot = d3.select("div.tooltipPlot");
	var tooltipGeneral = d3.select("div.tooltipGeneral");

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
	
	<!-- Count the rows skipped and the distance to add -->
	rowNeeded = 0;
	
	<!-- Build the table -->
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
		} else {
			rowNeeded += 1;
		}
	}
	
	d3.select("#resultsTable")
		.style("margin-top", (( 2.15 * rowNeeded) + 4.3) + "%")

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
			335 translation is half of the whole spectrum, or the zero position of the isms
			505 translation is whole of the whole spectrum, or the one position of the isms
			
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

<!-- Bar Chart -->
	var w1C = 320;
	var h1C = 320;

	var x = d3.scale.linear()
    	.domain([0, 1])
 		.range([0, w1C]);
 
	var y = d3.scale.linear()
		.domain([0, d3.max(data, function(d) { return d.areaPercentage; })])
		.rangeRound([0, h1C]);

	
	var svg = d3.select("#barChart").append("svg:svg")
		    .attr("width", w1C)
		    .attr("height", h1C)
		    .style("margin-left", "50px")
		    .style("margin-right", "50px")
		    //.style("background-color", "gray")
		    ;
	
	svg.selectAll("rect")
		.data(data)
	  .enter().append("rect")
		.attr("x", function(d, i) { return i * w1C/data.length ; })
		.attr("y", function(d) { return h1C - y(d.areaPercentage) + .5; })
		.attr("width", 20)
		.attr("height", function(d) { return y(d.areaPercentage); })
		.style("fill", function(d) { return d.color; })
		.style("stroke", "black")
		.style("stroke-width", "1px")
		.style("opacity", function(d,i){
				return d.opacity;
				})
		
		.on("mouseover", function() {
		        d3.select(this)
		        .style("opacity", .1)
		        return tooltipBar
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
				return tooltipBar
		            .style("top", (d3.event.pageY + 16) + "px")
		            .style("left", (d3.event.pageX + 16) + "px");
			})
		    .on("mouseout", function() {
		        d3.select(this)
		        .style("opacity", function(d,i){
				return d.opacity;
				})
				return tooltipBar
					.style("visibility", "hidden")
				;
		    })
			;
		
	svg.append("line")
		.attr("x1", 0)
		.attr("x2", w1C)
		.attr("y1", h1C - .5)
		.attr("y2", h1C - .5)
		.style("stroke", "#000");

<!-- Scatter Plot -->
	var w1P = 320;
	var h1P = 320;

	var x = d3.scale.linear()
    	.domain([0, 1])
 		.range([0, w1P]);
 
	var y = d3.scale.linear()
		.domain([0, d3.max(data, function(d) { return d.outRadius; })])
		.rangeRound([0, h1P]);

	
	var svg = d3.select("#scatterPlot").append("svg:svg")
		    .attr("width", w1P)
		    .attr("height", h1P)
		    .style("margin-left", "50px")
		    .style("margin-right", "50px")
		    //.style("background-color", "gray")
		    ;
	
	svg.selectAll("circle")
		.data(data)
	  .enter().append("circle")
		.attr("cx", function(d, i) {
		return (i * (w1P- d3.max(data, function(d) { 
			return d.outRadius; }))/data.length)
			+ d3.max(data, function(d) { return d.outRadius/2; }); })
		.attr("cy", function(d) { return (h1P - y(d.outRadius))
			+ d3.max(data, function(d) { return d.outRadius/2; }); })
		.attr("r", function(d) { return d.areaPercentage; })
		.attr("width", 20)
		.style("fill", "gray")
		.style("fill-opacity", .2)
		.style("stroke", function(d) { return d.color; })
		.style("stroke-width", "2px")
		.style("opacity", function(d,i){
				return d.opacity;
				})
		
		.on("mouseover", function() {
		        d3.select(this)
		        .style("opacity", .1)
		        return tooltipPlot
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
				return tooltipPlot
		            .style("top", (d3.event.pageY + 16) + "px")
		            .style("left", (d3.event.pageX + 16) + "px");
			})
		    .on("mouseout", function() {
		        d3.select(this)
		        .style("opacity", function(d,i){
				return d.opacity;
				})
				return tooltipPlot
					.style("visibility", "hidden")
				;
		    })
			;
		
	svg.append("line")
		.attr("x1", 0)
		.attr("x2", w1P)
		.attr("y1", h1P - .5)
		.attr("y2", h1P - .5)
		.style("stroke", "#000");


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
	
	d3.selectAll(".ism")
		.on("mouseover", function() {
		        d3.select(this)
		        return tooltipGeneral
		        	.style("visibility", "visible")
		        	.style("background-color", "darkslategray")//this.__data__.color)
		        	.style("color", "white")
		        	.style("margin-top", this.offsetTop -370 + "px")
		        	.style("margin-left", this.offsetLeft - 200 + "px")
		        	.text("Learn more about " + this.lastChild.innerHTML + " by clicking here!")
		        	.style("font-size", "80%")
		        	//.text(this.__data__.areaPercentage.toFixed(2) + "% " + this.__data__.ideologyName)
				;
		    })
		.on("mouseout", function() {
		        d3.select(this)
				return tooltipGeneral
					.style("visibility", "hidden")
				;
		    })
			;


	$(function() {
		$( "#openingMessage" ).dialog({
			modal: true,
			width: "500px",
			buttons: {
				Great: function() {
					$( this ).dialog( "close" );
				}
			}
		});
	});

 
</g:javascript>

<g:javascript>

	var ttNG = d3.select("div.ttNG");
	var ttOH = d3.select("div.ttOH");
	var ttBC = d3.select("div.ttBC");
	var ttSP = d3.select("div.ttSP");

	d3.selectAll("#ttNGQuestion")
		.on("mouseover", function() {
		        d3.select(this)
		        return ttNG
		        	.style("visibility", "visible")
		        	.style("background-color", "darkslategray")//this.__data__.color)
		        	.style("color", "white")
		        	.style("margin-top", this.offsetTop - 760 + "px")
		        	.style("margin-left", this.offsetLeft - 1350 + "px")
		        	.style("font-size", "100%")
		        	.style("width", "300px")
		        	.style("height", "66%")
				;
		    })
		.on("mouseout", function() {
		        d3.select(this)
				return ttNG
					.style("visibility", "hidden")
				;
		    })
			;
			
	d3.selectAll("#ttOHQuestion")
		.on("mouseover", function() {
		        d3.select(this)
		        return ttOH
		        	.style("visibility", "visible")
		        	.style("background-color", "darkslategray")//this.__data__.color)
		        	.style("color", "white")
		        	.style("margin-top", this.offsetTop - 842.5 + "px")
		        	.style("margin-left", this.offsetLeft - 1350 + "px")
		        	.style("font-size", "100%")
		        	.style("width", "300px")
		        	.style("height", "66%")
				;
		    })
		.on("mouseout", function() {
		        d3.select(this)
				return ttOH
					.style("visibility", "hidden")
				;
		    })
			;
			
	d3.selectAll("#ttBCQuestion")
		.on("mouseover", function() {
		        d3.select(this)
		        return ttBC
		        	.style("visibility", "visible")
		        	.style("background-color", "darkslategray")//this.__data__.color)
		        	.style("color", "white")
		        	.style("margin-top", this.offsetTop - 925 + "px")
		        	.style("margin-left", this.offsetLeft - 1350 + "px")
		        	.style("font-size", "100%")
		        	.style("width", "300px")
		        	.style("height", "66%")
				;
		    })
		.on("mouseout", function() {
		        d3.select(this)
				return ttBC
					.style("visibility", "hidden")
				;
		    })
			;
	
	d3.selectAll("#ttSPQuestion")
		.on("mouseover", function() {
		        d3.select(this)
		        return ttSP
		        	.style("visibility", "visible")
		        	.style("background-color", "darkslategray")//this.__data__.color)
		        	.style("color", "white")
		        	.style("margin-top", this.offsetTop - 1012 + "px")
		        	.style("margin-left", this.offsetLeft - 1350 + "px")
		        	.style("font-size", "100%")
		        	.style("width", "300px")
		        	.style("height", "66%")
				;
		    })
		.on("mouseout", function() {
		        d3.select(this)
				return ttSP
					.style("visibility", "hidden")
				;
		    })
			;

</g:javascript>

<body>

	<div class="body">
		<a class="navbar" href="${contextpath }/ideology_quiz/ideology/index">Home</a>
	</div>
	<div id="instructions">
		<p>Welcome to your dashboard where you will find all the information related to our
		system's analysis of how you answered the questions where we have included a table and a
		variety of visualizations to spark your interest. If you have questions, please see our <a href="#">FAQ.</a>
		</p>
		<p></p>
		<p style="float: left"><i>Note-- You will get more information about visualizations when you hover your cursor over this symbol:</i></p>
		<div style="float: right; margin-right: 30%;"class="ui-icon ui-icon-help"></div>
	</div>
	<div id="actionHolder" style="margin-left: 0%;">
		<table id="resultsTable" style="width: 25%; float: left; margin-left: 10%;">
		</table>

		<div id="accordion"
			style="font-size: 0.6em; text-align: right; width: 460px; float: left; margin-left: 7%;">
			<h3>Nightingale Graph</h3>
			<div>
				<p id="ttNGQuestion" class="ui-icon ui-icon-help" style="float: right;"></p>
				<div id="nGraph">
				</div>
				<div class="ttNG">
					<div>
						<div style="float: left;">
							<b>About the Nightingale Graph</b>
						</div>
						<br>
						<br>
						<div style="float: left;">
							<b>Radius</b> indicates the intesity of ideology
						</div>
						<div style="float: left;">
							<b>Area</b> indicates the overall percentage of ideology
						</div>
						<div style="float: left;">
							<b>Theta</b> indicates the number of points of the ideolgy
						</div>
						<div style="float: left;">
							<b>Color</b> indicates the type of ideology
						</div>
						<div style="float: left;">
							<b>Opacity</b> indicates the intesity of ideology
						</div>
					</div>
					<br>
					<br>
					<br>
					<div style="padding-top: 10%;">
						<b>Concept</b> 
					</div>
					<div>
					-Via Wikipedia -
					</div>
					<div>
					http://en.wikipedia.org/wiki/Florence_Nightingale
					</div>
					<br>
					<br>
					<div>
					</div>
					<div>
					Indeed, Nightingale is described as "a true pioneer in the 
					graphical representation of statistics", and is credited with 
					developing a form of the pie chart now known as the polar area
					 diagram, or occasionally the Nightingale rose diagram, 
					 equivalent to a modern circular histogram, to illustrate
					  seasonal sources of patient mortality in the military field 
					  hospital she managed. Nightingale called a compilation of 
					  such diagrams a "coxcomb", but later that term would 
					  frequently be used for the individual diagrams. She made 
					  extensive use of coxcombs to present reports on the nature 
					  and magnitude of the conditions of medical care in the 
					  Crimean War to Members of Parliament and civil servants who
					   would have been unlikely to read or understand traditional 
					   statistical reports.
					</div>
				</div>
				<div class="tooltip">Errorror</div>
				<div style="text-align: center;">*Drawn to scale</div>
			</div>
			<h3>Ein Hundert Ideen</h3>
			<div>
				<p id="ttOHQuestion" class="ui-icon ui-icon-help" style="float: right;"></p>
				<div id="onehundredGraph">
				</div>
				<div class="ttOH">
					<div>
						<div style="float: left;">
							<b>About the Ein Hundert Ideen</b>
						</div>
						<br>
						<br>
						<div style="float: left;">
							<b>One Block</b> indicates roughly one percent of ideology
						</div>
						<div style="float: left;">
							<b>Many Blocks</b> indicates ~ percentage of an ideology
						</div>
						<div style="float: left;">
							<b>Color</b> indicates the type of ideology
						</div>
					</div>
					<br>
					<br>
					<br>
					<div style="padding-top: 10%;">
						<b>Concept</b> 
					</div>
					<br>
					<br>
					<div>
					The grid depicts a different variety of visualizing area,
					similar to that of the Nightingale Graph. "Ein Hundert Ideen"
					translates into "One Hundred Ideas" and we believe that this
					notion of ideas adequately depicts the relationship each square 
					truly has with the overall semblance of ideology. Afterall, each square
					is only a piece of the overall sum of 100.
					</div>
				</div>
				<div class="tooltipSquare">Errorror</div>
				<div style="text-align: center;">*Rounding approximations possible</div>
			</div>
			<h3>Bar Chart</h3>
			<div>
				<p id="ttBCQuestion" class="ui-icon ui-icon-help" style="float: right;"></p>
				<div id="barChart">
				</div>
				<div class="ttBC">
					<div>
						<div style="float: left;">
							<b>About the Nightingale Graph</b>
						</div>
						<br>
						<br>
						<div style="float: left;">
							<b>X-Axis</b> list from top-bottom(table) = left-right
						</div>
						<div style="float: left;">
							<b>Y-Axis</b> indicates the percentage of the ideolgy
						</div>
						<div style="float: left;">
							<b>Color</b> indicates the type of ideology
						</div>
						<div style="float: left;">
							<b>Opacity</b> indicates the intesity of ideology
						</div>
					</div>
					<br>
					<br>
					<br>
					<div style="padding-top: 10%;">
						<b>Concept</b> 
					</div>
					<br>
					<br>
					<div>
					A simple bar chart to indicate information in a conventional
					manner the information. While simple, still quite useful due to the clear
					understanding most people have of bar charts. The y-axis scales
					its upper bound equal to and based on the greatest y-statistic.
					This is to prevent clipping of important visual knowledge.				
					</div>
				</div>
				<div class="tooltipBar">Errorror</div>
				<div style="text-align: center;">*Drawn to scale</div>
			</div>
			<h3>Scatter Plot</h3>
			<div>
				<p id="ttSPQuestion" class="ui-icon ui-icon-help" style="float: right;"></p>
				<div id="scatterPlot">
				</div>
				<div class="ttSP">
					<div>
						<div style="float: left;">
							<b>About the Scatter Plot</b>
						</div>
						<br>
						<br>
						<div style="float: left;">
							<b>Plot Size</b> indicates the percentage of ideology
						</div>
						<div style="float: left;">
							<b>X-Axis</b> list from top-bottom(table) = left-right
						</div>
						<div style="float: left;">
							<b>Y-Axis</b> indicates the number of points of the ideolgy
						</div>
						<div style="float: left;">
							<b>Color</b> indicates the type of ideology
						</div>
						<div style="float: left;">
							<b>Opacity</b> indicates the intesity of ideology
						</div>
					</div>
					<br>
					<br>
					<br>
					<div style="padding-top: 10%;">
						<b>Concept</b> 
					</div>
					<br>
					<br>
					<div>A simple scatter plot  to indicate information in a 
					conventional manner the information. While simple, still quite useful 
					due to the clear understanding most people have of scatter plots. 
					The y-axis and x-axis scale their bounds relative and equal to 
					the greates and lowest statistics, and additionally scale based on the
					radius. This is to prevent clipping of important visual knowledge.			
					</div>
				</div>
				<div class="tooltipPlot">Errorror</div>
				<div style="text-align: center;">*Drawn to scale</div>
			</div>
		</div>

	</div>


	<div class="tooltipGeneral">Errorror</div>
	<div id="spectrumholder" style="margin-top: 40%;">
		<div
			style="width: 13%; float: left; text-align: right; margin-top: 1.3%;">
			<div class="ism"><a href="#">Statism</a></div>
			<div class="ism"><a href="#">Republicanism</a></div>
			<div class="ism"><a href="#">Marxism</a></div>
			<div class="ism"><a href="#">Progressivism</a></div>
			<div class="ism"><a href="#">Centralism</a></div>
			<div class="ism"><a href="#">Anthropocentrism</a></div>
			<div class="ism"><a href="#">Elitism</a></div>
			<div class="ism"><a href="#">Pluralism</a></div>
			<div class="ism"><a href="#">Facism</a></div>
			<div class="ism"><a href="#">Loyalism</a></div>
			<div class="ism"><a href="#">Ethnocentrism</a></div>
			<div class="ism"><a href="#">Corporatism</a></div>
			<div class="ism"><a href="#">Democratism</a></div>
		</div>
		<div id="onethreeGraph"
			style="width: 70%; margin-right: 15%; margin-left: 15%;"></div>
		<div style="width: 13%; float: right; margin-top: -55.3%;">
			<div class="ism"><a href="#">Anarchism</a></div>
			<div class="ism"><a href="#">Authoritarianism</a></div>
			<div class="ism"><a href="#">Capitalism</a></div>
			<div class="ism"><a href="#">Conservatism</a></div>
			<div class="ism"><a href="#">Decentralism</a></div>
			<div class="ism"><a href="#">Ecologism</a></div>
			<div class="ism"><a href="#">Egalitarianism</a></div>
			<div class="ism"><a href="#">Fundamentalism</a></div>
			<div class="ism"><a href="#">Liberalism</a></div>
			<div class="ism"><a href="#">Radicalism</a></div>
			<div class="ism"><a href="#">Relativism</a></div>
			<div class="ism"><a href="#">Socialism</a></div>
			<div class="ism"><a href="#">Supremacism</a></div>
		</div>
		<div id="instructions" style="margin-top: -5%;">
		<p>Thank you for learning and taking the time to understand more, but the journey 
		isn't over yet!	If you haven't <a href="#">created a user account</a> yet, you may be missing out
		on all of the fun and exciting features, from customized social networks to in-depth readings
		about your combination of ideology.
		</p>
		<p></p>
		<p style="float: left"><i><b>And the best part is that the experience is free! <a href="#">Click here to create a user account.</a></b></i></p>
	</div>
	</div>
	
	<div id="openingMessage" title="Let the Ideoquest Begin!">
	 
	<p style="font-size: 80%;">
		<span class="ui-icon ui-icon-circle-check" style="float:left; margin:0 7px 50px 0;"></span>
		Congrats on taking your first step on understanding ideology!
		For help, <b>remember to read the instructions</b>
		at the top of the page.
	</p>
	<br>
	<p style="text-align: right; font-size: 80%;">Good luck!
	</p>
	<p style="text-align: right; font-size: 80%;">-The Ideoquest Team
	</p>
	
	</div>
</body>
</html>