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

</head>

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
  
  <div id="formholder" style="margin-right: 45%;">
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