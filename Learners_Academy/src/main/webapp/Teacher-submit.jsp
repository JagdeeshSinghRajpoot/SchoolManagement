<%@page import="java.util.ArrayList"%>
<%@page import="com.Academy.DAO.ClassesDAO"%>
<%@page import="com.Academy.Entity.Classes"%>
<%@page import="com.Academy.Entity.Subjects"%>
<%@page import="com.Academy.DAO.SubjectsDAO"%>
<%@page import="com.Academy.DAO.TeacherDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.Academy.Entity.Teacher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher submit</title>
</head>
<body>
<body>

	<%
		String teacherName = request.getParameter("teacherName");
		String subjectName = request.getParameter("subjectName");
		String class1Name = request.getParameter("class1Name");
		String class2Name = request.getParameter("class2Name");
		
		Teacher tea = new Teacher();
		tea.setTeacher_name(teacherName);
		
				
		List<Subjects> subjects = SubjectsDAO.listSubject();
		for (Subjects sub : subjects){
			  if(sub.getSubjectName().equals(subjectName)){
				  tea.setSubject(sub);
			  }
		}
		List<Classes> cls = new ArrayList<Classes>();
		
		List<Classes> c1 = ClassesDAO.listClasses();
		for (Classes cl : c1){
			  if(cl.getClassName().equals(class1Name)){
				  cls.add(cl);
			  }
		}
		
		
		for (Classes cl : c1){
			  if(cl.getClassName().equals(class2Name)){
				  cls.add(cl);
			  }
		}
	
		tea.setClasses(cls);
		TeacherDAO.addTeacher(tea);
		response.sendRedirect("Teacher-list.jsp");

		
	%>

</body>

</body>
</html>