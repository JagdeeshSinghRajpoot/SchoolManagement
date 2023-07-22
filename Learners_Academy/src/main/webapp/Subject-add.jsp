<%@page import="com.Academy.DAO.ClassesDAO"%>
<%@page import="com.Academy.Entity.Classes"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Subject-Home.jsp"></jsp:include>
	<%
	List<Classes> classes = ClassesDAO.listClasses();
	request.setAttribute("classList", classes);
	%>

	<form method="post" action="Subject-submit.jsp">
		<fieldset>
			Subject Name : <input type="text" name="subjectName" id="subjectName" /><br />
			<br /> Class : <select name="subjectClass" id="subjectClass">
				<c:forEach items="${classList}" var="cls">
					<option value="${cls.getClassName()}">${cls.getClassName()}</option>

				</c:forEach>
			</select> <input type="submit" value="add Subject" />
		</fieldset>
	</form>
</body>
</html>