<%@page import="com.Academy.DAO.StudentDAO"%>
<%@page import="com.Academy.Entity.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style> table,th,td {border:2px solid black; padding:5px;}</style>
</head>
<body>
<jsp:include page="Student-Home.jsp"/>

	<%
			List<Student> stu = StudentDAO.listStudent();
			request.setAttribute("stuList", stu);	
		%>
		
		<table style="border-style: solid;">
		<tr>
			<th>Class Name</th>
			<th>Student </th>
		
		</tr>
		<c:forEach items="${stuList}" var="stuC">
			<tr>
				<td>${stuC.getClasses().getClassName()}</td>
				<td>${stuC.getStudentName()}</td>
				
			</tr>
		</c:forEach>
		</table>

</body>
</html>