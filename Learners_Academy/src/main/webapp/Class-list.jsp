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
<style> table,th,td {border:2px solid black; padding:5px;}

</style>
</head>
<body>
	<jsp:include page="Class-Home.jsp"></jsp:include>
	
	<%
			List<Classes> classes = ClassesDAO.listClasses();
			request.setAttribute("classList", classes);	
		%>
		
		<table style="border-style: solid;">
		<tr>
			<th>Class Name</th>
			<th>Student </th>
			<th>Subject</th>
			<th>Teacher</th>
		</tr>
		<c:forEach items="${classList}" var="cls">
			<tr>
				<td>${cls.getClassName()}</td>
				<td>${cls.getStudent()}</td>
				<td>${cls.getSubject()}</td>
				<td>${cls.getTeacher()}</td>	
			</tr>
		</c:forEach>
		</table>
	
</body>
</html>