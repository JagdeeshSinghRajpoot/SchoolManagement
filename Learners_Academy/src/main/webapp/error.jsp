<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<font color="red"> Error <%= exception.getMessage() %></font>
	<p> Please go to <a href="login.jsp"> Login </a> Page to login!!</p>
</body>
</html>