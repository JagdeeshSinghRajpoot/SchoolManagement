<%@page import="com.Academy.Entity.Classes"%>
<%@page import="com.Academy.DAO.TeacherDAO"%>
<%@page import="com.Academy.Entity.Teacher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style> table, th, td {border: 2px solid black; padding: 5px;}</style>
</head>
<body>
<jsp:include page="Teacher-Home.jsp"></jsp:include>

<%
    List<Teacher> teacherList = TeacherDAO.listTeacher();

    
        %>
        <table style="border-style: solid;">
            <tr>
                <th>Teacher Name</th>
                <th>Subject Name</th>
                <th>Class Name</th>
            </tr>
            <% for (Teacher teacher : teacherList) { %>
            <tr>
                <td><%= teacher.getTeacher_name() %></td>
                <td><%= teacher.getSubject().getSubjectName() %></td>
                <td>
                <% 
                List<Classes> c = teacher.getListOfClasses();
                for(Classes cls : c){
                	
                		out.print(cls.getClassName()+",");
                	
                }
                	%>
                   
                </td>
            </tr>
               <%
    }
%>
        </table>
        <br>
     

</body>
</html>
