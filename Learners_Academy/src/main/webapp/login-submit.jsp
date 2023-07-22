<%@page import="com.Academy.DAO.AdminDAO"%>
<%@page import="com.Academy.Entity.Admin"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<jsp:include page="header.jsp"/>

	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
		if(username == null || password == null || username.equalsIgnoreCase("") 
				|| password.equalsIgnoreCase("")){
			throw new ServletException("Mandatory Parameters are missing :: ");
		}
		
		List<Admin> admin = AdminDAO.listAdmin();
		for(Admin ad : admin){
		
		if(ad.getUsername().equals(username) && password.equals(ad.getPassword())){
			session.setAttribute("username", username);
			out.println("<h2 style='color:green'> Successfully Logged In!! </h2>");
		}} 
		
	
	
		%>

	

</body>
</html>