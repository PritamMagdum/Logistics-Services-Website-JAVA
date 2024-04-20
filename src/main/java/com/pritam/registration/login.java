package com.pritam.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.catalina.User;

import com.pritam.dao.UserDao;
import com.pritam.helper.FactoryProvider;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		/*
		 * try(PrintWriter out = response.getWriter()){
		 * 
		 * String uemail = request.getParameter("username"); String upwd =
		 * request.getParameter("password");
		 * 
		 * 
		 * UserDao userDao = new UserDao(FactoryProvider.getFactory()); User
		 * user=userDao.getUserByEmailAndPassword(uemail, upwd);
		 * System.out.println(user); System.out.println("Hello"); }
		 */

		
		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");
		//String utype = null;
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Logistics?useSSL=false","root","SPlove@1622");
			PreparedStatement pst = con.prepareStatement("select * from User where u_Mail = ? and u_Password = ?");
			
			pst.setString(1, uemail);
			pst.setString(2, upwd);
			//pst.setString(3, utype);
			
			ResultSet rs = pst.executeQuery();
			
/*			HttpSession httpSession = request.getSession();
			if(rs == null) {
				response.sendRedirect("login.jsp");
			}else {
				//response.sendRedirect("UserHome.jsp");
				System.out.println("New User is comming"+uemail);
				httpSession.setAttribute("current-user", rs);
				
				if(rs.getUserType().equals("Admin")) {
					response.sendRedirect("DemoAddmin.jsp");
				}else if(rs.getUserType().equals("User")) {
					response.sendRedirect("DemoAddmin.jsp");
				}else {
					System.out.println("Sorry cannot find userType");
				}
				*/
			
			session.setAttribute("current-user", rs);
			
			if(rs.next()) {
				//session.setAttribute("name", rs.getString("uname"));
				session.setAttribute("name", rs.getString("u_Name"));
				session.setAttribute("uid", rs.getString("u_Id"));
				session.setAttribute("utype", rs.getString("u_Type"));
				dispatcher = request.getRequestDispatcher("NewUserHome.jsp");
				//dispatcher = request.getRequestDispatcher("index.jsp");
			}else if(uemail.equals("admin@gmail.com") && upwd.equals("admin@123")) {
				dispatcher = request.getRequestDispatcher("AdminTrack.jsp");
			}
			else {
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
		 
	}

}
