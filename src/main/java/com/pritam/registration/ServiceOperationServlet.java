package com.pritam.registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.MultipartConfig;
/*import javax.servlet.http.Part;*/

import com.pritam.dao.CategoryDao;
import com.pritam.dao.ContactDao;
import com.pritam.dao.DriverDao;
import com.pritam.dao.ServiceDao;
import com.pritam.dao.TrackDao;
import com.pritam.entities.Category;
import com.pritam.entities.Contact;
import com.pritam.entities.Driver;
import com.pritam.entities.Service;
import com.pritam.entities.Services;
import com.pritam.entities.Track;
import com.pritam.helper.FactoryProvider;
import  jakarta.servlet.http.Part;

@MultipartConfig
@WebServlet("/ServiceOperationServlet")
public class ServiceOperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* response.setContentType("txt/html;charset=UTF-8"); */
	
		try(PrintWriter out = response.getWriter()){
			
			
			String op = request.getParameter("operation");
			
			if(op.trim().equals("addcategory")) {
				
				String title = request.getParameter("categoryName");
				String description = request.getParameter("categoryDescription");
				
				Category category = new Category();
				category.setC_Title(title);
				category.setC_Desc(description);
				
				CategoryDao categoryDao = new CategoryDao(FactoryProvider.getFactory());
				
				int catId = categoryDao.saveCategory(category);
				
				System.out.println("Category Saved "+title);
				System.out.println(catId);
				
			}else if(op.trim().equals("addservice")) {
				
				String sTitle = request.getParameter("serviceName");
				String s_Desc = request.getParameter("serviceDescription");
				//int cId = Integer.parseInt(request.getParameter("catId"));
				Part part = request.getPart("servicePicture");
				
				Service s = new Service();
				s.setS_Name(sTitle);
				s.setS_Desc(s_Desc);
				s.setS_Pic(part.getSubmittedFileName());
				
				
				//Services s = new Services();
				//s.setS_Name(sTitle);
				//s.setS_Desc(s_Desc);
				//	//s.setS_Id(cId);
				//s.setS_Pic(part.getSubmittedFileName());
				
				
				//CategoryDao cDao = new CategoryDao(FactoryProvider.getFactory());
				//Category category = cDao.getCategoryById(cId);
				
				//s.setCategory(category);
				
				ServiceDao sDao = new ServiceDao(FactoryProvider.getFactory());
				sDao.saveService(s);
				System.out.println("Product Save Success.....");
				
				
			}else if(op.trim().equals("addDriver")) {
				
				String name = request.getParameter("driverName");
				String address = request.getParameter("driverAddress");
				String mobile = request.getParameter("driverMobile");
				String aadhar = request.getParameter("driverAadhar");
				String pan = request.getParameter("driverPan");
				
				Driver driver = new Driver();
				driver.setD_Name(name);
				driver.setD_Address(address);
				driver.setD_Mobile(mobile);
				driver.setD_Aadhar(aadhar);
				driver.setD_Pan(pan);
				
				
				DriverDao driverDao = new DriverDao(FactoryProvider.getFactory());
				
				int drivId = driverDao.saveDriver(driver);
				
				
				System.out.println("Driver Saved "+ name);
				System.out.println(drivId);
				
			}else if(op.trim().equals("addTrack")) {
				
				String cName = request.getParameter("cName");
				String cAddress = request.getParameter("cAddress");
				String cMobile = request.getParameter("cMobile");
				String Departure = request.getParameter("Departure");
				String Arrival = request.getParameter("Arrival");
				String Delivery = request.getParameter("Delivery");
				String Mode = request.getParameter("Mode");
				String Weight = request.getParameter("Weight");
				String Dimension = request.getParameter("Dimension");
				String Date = request.getParameter("Date");
				String dName = request.getParameter("dName");
				String dMobile = request.getParameter("dMobile");
				String sDescription = request.getParameter("sDescription");
				String Amount = request.getParameter("Amount");
				String Payment_Mode = request.getParameter("Payment_Mode");
				String Payment_Status = request.getParameter("Payment_Status");
				String vNumber = request.getParameter("vNumber");
				String Track_Number = request.getParameter("Track_Number");

				
				Track track = new Track();
				track.setC_Name(cName);
				track.setC_Address(cAddress);
				track.setC_Mobile(cMobile);
				track.setDeparture(Departure);
				track.setArrival(Arrival);
				track.setDelivery(Delivery);
				track.setMode(Mode);
				track.setWeight(Weight);
				track.setDimension(Dimension);
				track.setBooking_Date(Date);
				track.setD_Name(dName);
				track.setD_Mobile(dMobile);
				track.setS_Description(sDescription);
				track.setAmount(Amount);
				track.setP_Mode(Payment_Mode);
				track.setP_Status(Payment_Status);
				track.setV_Number(vNumber);
				track.setTrack_Number(Track_Number);

				
				TrackDao trackDao = new TrackDao(FactoryProvider.getFactory());
				
				int trackId = trackDao.saveTrack(track);
				
				System.out.println("Track Saved "+ Track_Number);
				System.out.println(trackId);
				
			}else if(op.trim().equals("addContact")) {
				
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
				
				
			}
		
		}
	
	}
	

    public ServiceOperationServlet() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
		
		/*
		 * response.getWriter().append("Served at: ").append(request.getContextPath());
		 */
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
		/* doGet(request, response); */
	}

}
