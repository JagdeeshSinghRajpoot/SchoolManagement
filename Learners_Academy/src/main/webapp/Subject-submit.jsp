<%@page import="com.Academy.DAO.SubjectsDAO"%>
<%@page import="com.Academy.DAO.ClassesDAO"%>
<%@page import="com.Academy.Entity.Classes"%>
<%@page import="java.util.List"%>
<%@page import="com.Academy.Entity.Subjects"%>
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
	String subjectName = request.getParameter("subjectName");
	String subjectClass = request.getParameter("subjectClass");

	Subjects sub = new Subjects();
	sub.setSubjectName(subjectName);

	List<Classes> classes = ClassesDAO.listClasses();
	for (Classes cls : classes) {
		if (cls.getClassName().equals(subjectClass)) {
			sub.setClasses(cls);
		}
	}
	
	
	SubjectsDAO.addSubjects(sub);
	response.sendRedirect("Subject-list.jsp");
	%>

</body>
</html>