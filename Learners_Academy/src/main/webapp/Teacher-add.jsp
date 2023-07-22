<%@page import="com.Academy.Entity.Subjects"%>
<%@page import="com.Academy.DAO.SubjectsDAO"%>
<%@page import="com.Academy.DAO.ClassesDAO"%>
<%@page import="com.Academy.Entity.Classes"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="z" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="Teacher-Home.jsp"></jsp:include>
		<%
			List<Classes> classes = ClassesDAO.listClasses();
			request.setAttribute("classList", classes);	
			
				
		%>

	<form method="post" action="Teacher-submit.jsp">
		<fieldset>
			Teacher Name : <input type="text" name="teacherName" id="teacherName"/><br/><br/>
			
			Class 1 : <select name="class1Name" id="class1Name">
			<c:forEach items="${classList}" var="cls">
				<option value="${cls.getClassName()}">${cls.getClassName()}</option>
				
			</c:forEach>
			</select>
			
			Class 2 : <select name="class2Name" id="class2Name">
			<c:forEach items="${classList}" var="cls">
				<option value="${cls.getClassName()}">${cls.getClassName()}</option>
				
			</c:forEach>
			</select>
			
			
			Subject : <select name="subjectName" id="subjectName">
			<z:forEach items="${classList}" var="sub">
				<option value="${sub.getSubject()}">${sub.getSubject()}</option>
				
			</z:forEach>
			</select>
			
			<input type="submit" value="add Teacher"/>	
		</fieldset>
	</form>

</body>
</html>