<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Question 8</title>

<style>

</style>

</head>

<g:javascript>
	$(function() {
		$("#question08").buttonset();
	});
	
	function sender() {
	document.forms["form08"].submit();
	return true;
	}
	
</g:javascript>

<body>
  <div class="body">
  <a href="${contextpath }/ideology_quiz/home/index">Home</a>
  </div>
  
  <div id="formholder" >
	<g:form name="form08" action="q09" method="post">
	<div>${radio07}</div>
	  <h3>Familiar ideas should not change
</h3>
		<div id="question08" class="ataQuestion">
			<input type="radio" id="radio001" value="-3" name="radio"><label for="radio001">Strongly Disagree</label>
			<input type="radio" id="radio002" value="-2" name="radio"><label for="radio002">Moderately Disagree</label>
			<input type="radio" id="radio003" value="-1" name="radio"><label for="radio003">Slightly Disagree</label>
			<input type="radio" id="radio004" value="0" name="radio" checked="checked"><label for="radio004">Neutral</label>
			<input type="radio" id="radio005" value="1" name="radio"><label for="radio005">Slightly Agree</label>
			<input type="radio" id="radio006" value="2" name="radio"><label for="radio006">Moderately Agree</label>
			<input type="radio" id="radio007" value="3" name="radio"><label for="radio007">Strongly Agree</label>
		</div>
	</g:form>
  </div>
  <g:actionSubmit id="submitButton" value="Submit" onclick="javascript:sender()"/>
  
</body>
</html>