package com.pritam.registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.hibernate.Transaction;

import com.mysql.cj.xdevapi.Session;
import com.pritam.entities.User;
import com.pritam.helper.FactoryProvider;


@WebServlet ("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		
		try {
			
			String userName = request.getParameter("name");
			String userEmail = request.getParameter("email");
			String userPassword= request.getParameter("pass");
			String userRePassword = request.getParameter("re_pass");
			String userMobile = request.getParameter("contact");
			
			Object dispatcher;
			@SuppressWarnings("unused")
			Object RequestDispatcher = dispatcher = null;

			
			if(userName.isEmpty()) {
				System.out.println("Name is blank");
				return;
			}
			
			
			User user = new User(userName, userEmail, userPassword, userRePassword, "User", userMobile);
			
			org.hibernate.Session hibernateSession = FactoryProvider.getFactory().openSession();
			
			Transaction tx = hibernateSession.beginTransaction();
			
			int userId = (int)hibernateSession.save(user);
	//		dispatcher = request.getRequestDispatcher("registration.jsp");
			
			
			tx.commit();
			hibernateSession.close();
			
			if(user != null) {
				System.out.println("User is here");
			}
			
			System.out.println("successfully saved registration");
			System.out.println("user id is "+ userId);
			System.out.println("user name is "+ userName);
			
			
			
			/*
			 * HttpSession httpSession = (HttpSession) request.getSession();
			 * httpSession.setAttribute("message", "Registration Successfull "+ userId);
			 * response.sendRedirect("registration.jsp");
			 */		 
//			
			dispatcher = request.getRequestDispatcher("registration.jsp");
			
			if(userId > 0) {
				request.setAttribute("status","success");
			} else
			{ 
				request.setAttribute("status","failed"); 
			}
				 
			
			((jakarta.servlet.RequestDispatcher) dispatcher).forward(request, response);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
