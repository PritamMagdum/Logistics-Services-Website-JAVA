package com.pritam.registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import org.apache.catalina.User;

import com.pritam.dao.UserDao;
import com.pritam.helper.FactoryProvider;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	

		try(PrintWriter out = response.getWriter()){
			
			String email = request.getParameter("username");
			String password = request.getParameter("password");
			
			
			UserDao userDao = new UserDao(FactoryProvider.getFactory());
			User user=userDao.getUserByEmailAndPassword(email, password);
			System.out.println(user);
			System.out.println("Invalid user");
			
		}
			
	}		
}
