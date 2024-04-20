package com.pritam.registration;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.annotation.MultipartConfig;
//import javax.servlet.http.Part;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
					maxFileSize = 10240 * 1024 * 10,
					maxRequestSize = 1024 * 1024 * 11)
@WebServlet("/FileUpload")
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FileUploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		PrintWriter out = response.getWriter();
		
		String sTitle = request.getParameter("serviceName");
		String s_Desc = request.getParameter("serviceDescription");
		
		Part part = request.getPart("servicePicture");
		String filename = extractFileName(part);
		String savePath = "C:\\Users\\91869\\eclipse-workspace\\Logistics\\src\\main\\webapp\\images\\ServicesIMG" + File.separator + filename;
		File fileSaveDir = new File(savePath);
		
		part.write(savePath + File.separator);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Logistics?useSSL=false","root","SPlove@1622");
			PreparedStatement pst = con.prepareStatement("insert into Service values(?,?,?,?)");
			
			pst.setString(1, sTitle);
			pst.setString(2, s_Desc);
			pst.setString(3, filename);
			pst.setString(4, savePath);
			
			out.println("Service Inserted Successfully");
			
		}catch (Exception e) {
			System.out.println(e);
		}
		
	}


	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String [] items = contentDisp.split(";");
		for(String s : items) {
			if(s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=")+2, s.length() -1);
			}
		}
		return "";
	}
	
}
