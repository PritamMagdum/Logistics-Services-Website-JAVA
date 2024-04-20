package com.pritam.registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.print("Working Successful");
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String Repass = request.getParameter("re_pass");
		String umobile = request.getParameter("contact");
		String U_Type = "User";
		
		Object dispatcher;
		@SuppressWarnings("unused")
		Object RequestDispatcher = dispatcher = null;

		
		Connection con = null;
		
		if(uname == null || uname.equals("")) {
			request.setAttribute("status", "invalidName");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			((jakarta.servlet.RequestDispatcher) dispatcher).forward(request, response);
		}
		
		if(uemail == null || uemail.equals("")) {
			request.setAttribute("status", "invalidEmail");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			((jakarta.servlet.RequestDispatcher) dispatcher).forward(request, response);
		}
		
		if(upwd == null || upwd.equals("")) {
			request.setAttribute("status", "invalidPassword");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			((jakarta.servlet.RequestDispatcher) dispatcher).forward(request, response);
		}else if(!upwd.equals(Repass)) {
			request.setAttribute("status", "invalidConfirmPassword");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			((jakarta.servlet.RequestDispatcher) dispatcher).forward(request, response);
		}
		
		if(umobile == null || umobile.equals("")) {
			request.setAttribute("status", "invalidMobile");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			((jakarta.servlet.RequestDispatcher) dispatcher).forward(request, response);
		}else if(umobile.length() > 10) {
			request.setAttribute("status", "invalidMobileLength");
			dispatcher = request.getRequestDispatcher("registration.jsp");
			((jakarta.servlet.RequestDispatcher) dispatcher).forward(request, response);
		}

		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Logistics?useSSL=false","root","SPlove@1622");
			PreparedStatement pst = con
					.prepareStatement("insert into users(uname, uemail, upwd, umobile, U_Type) values(?,?,?,?,?)");
			
			pst.setString(1,uname);
			pst.setString(2,uemail);
			pst.setString(3,upwd);
			pst.setString(4,umobile);
			pst.setString(5,U_Type);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			
			if(rowCount > 0) {
				request.setAttribute("status","success");
			}else {
				request.setAttribute("status","failed");
			}
			
			
			((jakarta.servlet.RequestDispatcher) dispatcher).forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
				try {
					con.close();
				}catch(SQLException e) {
					e.printStackTrace();
				}
		}
	}

}
