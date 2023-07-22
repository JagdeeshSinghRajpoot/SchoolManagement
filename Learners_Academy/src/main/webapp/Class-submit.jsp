<%@page import="com.Academy.DAO.ClassesDAO"%>
<%@page import="com.Academy.Entity.Teacher"%>
<%@page import="com.Academy.Entity.Subjects"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Academy.Entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.Academy.Entity.Classes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String className = request.getParameter("className");
	
	Classes newClass = new Classes();
	newClass.setClassName(className);
	
	ClassesDAO.addClasses(newClass);

	response.sendRedirect("Class-list.jsp");
	%>

</body>
</html>