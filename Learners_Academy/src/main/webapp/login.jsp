<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	
	
	
	<br/><br/>
	<form method="post" action="login-submit.jsp">
	
		<fieldset>
			<legend>Login Form </legend>
			
			Username: <input type="text" name="username" id="username" />	<br/><br/>
			Password: <input type="password" name="password" id="password" /> 	<br/><br/>
			
			<input type="submit" value="login" />
		</fieldset>
		
	</form>
	<jsp:include page="footer.jsp"/>
</body>
</html>