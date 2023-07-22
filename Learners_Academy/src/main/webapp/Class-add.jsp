<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="Class-Home.jsp"></jsp:include>
<form method="post" action="Class-submit.jsp">
		<fieldset>
			Class : <input type="text" name="className" id="className"/><br/><br/>
			<input type="submit" value="add Class"/>
		</fieldset>
	</form>

</body>
</html>