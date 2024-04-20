package com.pritam.registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.pritam.dao.CategoryDao;
import com.pritam.dao.ContactDao;
import com.pritam.dao.DriverDao;
import com.pritam.dao.GetQuoteDao;
import com.pritam.dao.ServiceDao;
import com.pritam.dao.TrackDao;
import com.pritam.entities.Category;
import com.pritam.entities.Contact;
import com.pritam.entities.Driver;
import com.pritam.entities.GetQuote;
import com.pritam.entities.Service;
import com.pritam.entities.Track;
import com.pritam.helper.FactoryProvider;


@WebServlet("/ContactOperationServlet")
public class ContactOperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* response.setContentType("txt/html;charset=UTF-8"); */
	
		try(PrintWriter out = response.getWriter()){
			
			 Date date = new Date();
			
			/*
			 * Date date = new Date(); SimpleDateFormat DateFor = new
			 * SimpleDateFormat("dd/MM/yyyy"); String stringDate= DateFor.format(date);
			 */
			
			/*
			 * String pattern = "dd-MM-yyyy"; SimpleDateFormat simpleDateFormat = new
			 * SimpleDateFormat(pattern); String date = simpleDateFormat.format(new Date());
			 * System.out.println(date);
			 */
			
			String op = request.getParameter("operation");
			
			if(op.trim().equals("addContact")) {
				
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String mobile = request.getParameter("phone");
				String message = request.getParameter("message");
				
				Contact contact = new Contact();
				contact.setU_Name(name);
				contact.setU_Mail(email);
				contact.setU_Mobile(mobile);
				contact.setU_Message(message);
				
				
				ContactDao contactDao = new ContactDao(FactoryProvider.getFactory());
				
				int contId = contactDao.saveContact(contact);
				
				System.out.println("Contact Saved "+ name);
				System.out.println(contId);
				
				
				
			}else if(op.trim().equals("addGetQuote")) {
				
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String mobile = request.getParameter("phone");
				String message = request.getParameter("message");
				String departure = request.getParameter("departure");
				String delivery = request.getParameter("delivery");
				String weight = request.getParameter("weight");
				String dimension = request.getParameter("dimensions");
				
			
				GetQuote gq = new GetQuote();
				gq.setU_Name(name);
				gq.setU_Mail(email);
				gq.setU_Mobile(mobile);
				gq.setU_Message(message);
				gq.setDeparture(departure);
				gq.setDelivery(delivery);
				gq.setWeight(weight);
				gq.setDimension(dimension);
				gq.setDate(date);

				
				GetQuoteDao qDao = new GetQuoteDao(FactoryProvider.getFactory());
				
				int qId = qDao.saveGetQuote(gq);
				
				System.out.println("Quote Saved "+ name);
				System.out.println(qId);
				
			}
		
		}
	
	}
	
    public ContactOperationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		processRequest(request, response);
		
		/*
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 */
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}

}
