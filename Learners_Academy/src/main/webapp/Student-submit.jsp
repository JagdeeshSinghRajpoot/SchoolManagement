<%@page import="com.Academy.DAO.StudentDAO"%>
<%@page import="com.Academy.DAO.ClassesDAO"%>
<%@page import="com.Academy.Entity.Classes"%>
<%@page import="java.util.List"%>
<%@page import="com.Academy.Entity.Student"%>
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
		String studentName = request.getParameter("studentName");
		String studentClass = request.getParameter("studentClass");
		
		Student s1 = new Student();
		s1.setStudentName(studentName);
		
				
		List<Classes> classes = ClassesDAO.listClasses();
		for (Classes cls : classes){
			  if(cls.getClassName().equals(studentClass)){
				  s1.setClasses(cls);
			  }
		}
		StudentDAO.addStudent(s1);
		

		response.sendRedirect("Student-list.jsp");
	%>

</body>
</html>