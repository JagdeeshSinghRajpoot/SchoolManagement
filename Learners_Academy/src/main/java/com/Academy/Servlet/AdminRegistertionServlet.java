package com.Academy.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Academy.DAO.AdminDAO;
import com.Academy.Entity.Admin;


@WebServlet("/register")
public class AdminRegistertionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminRegistertionServlet() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
        String password = request.getParameter("password");
       

        Admin admin = new Admin();
        admin.setUsername(username);
        admin.setPassword(password);
      
      
        AdminDAO.addAdmin(admin);

       
        response.sendRedirect("index.jsp");
	}

}
