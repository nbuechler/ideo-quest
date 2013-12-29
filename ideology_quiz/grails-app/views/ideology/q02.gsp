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
		$("#question02").buttonset();
	});
	
	function sender() {
	document.forms["form02"].submit();
	return true;
	}
	
</g:javascript>

<body>
  <div class="body">
  <a href="${contextpath }/ideology_quiz/home/index">Home</a>
  </div>
  
  <div id="formholder" style="margin-right: 45%;">
	<g:form name="form02" action="q03" method="post">
	  <div>${radio01}</div>
	  <h3>No elite should interfere with self-organizing and voluntary groups, communities, and organizations
</h3>
		<div id="question02" class="ataQuestion">
			<input type="radio" id="radio005" value="0" name="radio" checked="checked"><label for="radio005">Strongly Disagree</label>
			<input type="radio" id="radio006" value="1" name="radio"><label for="radio006">Disagree</label>
			<input type="radio" id="radio007" value="2" name="radio"><label for="radio007">Agree</label>
			<input type="radio" id="radio008" value="3" name="radio"><label for="radio008">Strongly Agree</label>
		</div>
	</g:form>
  </div>
  
  <g:actionSubmit value="results" onclick="javascript:sender()"/>
  
</body>
</html>