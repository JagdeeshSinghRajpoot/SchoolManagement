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
<jsp:include page="Student-Home.jsp"/>
		<%
			List<Classes> classes = ClassesDAO.listClasses();
			request.setAttribute("classList", classes);	
		%>

	<form method="post" action="Student-submit.jsp">
		<fieldset>
			Student Name : <input type="text" name="studentName" id="studentName"/><br/><br/>
			
			Class : <select name="studentClass" id="studentClass">
			<c:forEach items="${classList}" var="cls">
				<option value="${cls.getClassName()}">${cls.getClassName()}</option>
				
			</c:forEach>
			</select>
			<input type="submit" value="add Student"/>	
		</fieldset>
	</form>

</body>
</html>