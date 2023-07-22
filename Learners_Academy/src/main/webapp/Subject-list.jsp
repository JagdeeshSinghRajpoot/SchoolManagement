<%@page import="com.Academy.DAO.SubjectsDAO"%>
<%@page import="com.Academy.Entity.Subjects"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, th, td {
	border: 2px solid black;
	padding: 5px;
}
</style>
</head>
<body>

	<jsp:include page="Subject-Home.jsp"></jsp:include>

	<%
	List<Subjects> sub = SubjectsDAO.listSubject();
	request.setAttribute("subList", sub);
	%>

	<table style="border-style: solid;">
		<tr>
			<th>Class Name</th>
			<th>Subject</th>

		</tr>
		<c:forEach items="${subList}" var="subC">
			<tr>
				<td>${subC.getClasses().getClassName()}</td>
				<td>${subC.getSubjectName()}</td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>