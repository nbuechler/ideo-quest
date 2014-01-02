<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>

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

</style>

</head>

<g:javascript>
	$(function() {
		$("#question15").buttonset();
	});
	
	function sender() {
	document.forms["form15"].submit();
	return true;
	}
	
</g:javascript>

<body>
  <div class="body">
  <a href="${contextpath }/ideology_quiz/home/index">Home</a>
  </div>
  
  <div id="formholder" style="margin-right: 45%;">
	<g:form name="form15" action="q16" method="post">
	<div>${radio14}</div>
	  <h3>Preserving an orthodox culture is of the utmost importance
</h3>
		<div id="question15"  class="ataQuestion">
			<input type="radio" id="radio009" value="0" name="radio" checked="checked"><label for="radio009">Strongly Disagree</label>
			<input type="radio" id="radio010" value="1" name="radio"><label for="radio010">Disagree</label>
			<input type="radio" id="radio011" value="2" name="radio"><label for="radio011">Agree</label>
			<input type="radio" id="radio012" value="3" name="radio"><label for="radio012">Strongly Agree</label>
		</div>
	</g:form>
  </div>
  <g:actionSubmit id="submitButton" value="Submit" onclick="javascript:sender()"/>
  
</body>
</html>