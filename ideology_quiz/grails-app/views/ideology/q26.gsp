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
		$("#question26").buttonset();
	});
	
	function sender() {
	document.forms["form26"].submit();
	return true;
	}
	
</g:javascript>

<body>
  <div class="body">
  <a href="${contextpath }/ideology_quiz/home/index">Home</a>
  </div>
  
  <div id="formholder" style="margin-right: 45%;">
	<g:form name="form26" action="end" method="post">
	<div>${radio25}</div>
			<h3>It is acceptable for one group to dominate other groups
</h3>
			<div id="question26"  class="ataQuestion">
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