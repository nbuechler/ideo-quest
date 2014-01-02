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
		$("#question01").buttonset();
	});
	
	
	
	
	function sender() {
	document.forms["form01"].submit();
	return true;
	}
	
</g:javascript>

<body>
  <div class="body">
  <a href="${contextpath }/ideology_quiz/home/index">Home</a>
  </div>
  
  <div id="formholder" style="margin-right: 45%;">
	<g:form name="form01" action="q02" method="post">
	  <h3>Governance of society does not require an executive authority
</h3>
		<div id="question01" class="ataQuestion">
			<input type="radio" id="radio001" value="0" name="radio" checked="checked"><label for="radio001">Strongly Disagree</label>
			<input type="radio" id="radio002" value="1" name="radio"><label for="radio002">Disagree</label>
			<input type="radio" id="radio003" value="2" name="radio"><label for="radio003">Agree</label>
			<input type="radio" id="radio004" value="3" name="radio"><label for="radio004">Strongly Agree</label>
		</div>
	</g:form>
  </div>
  <g:actionSubmit id="submitButton" value="Submit" onclick="javascript:sender()"/>
  
</body>
</html>