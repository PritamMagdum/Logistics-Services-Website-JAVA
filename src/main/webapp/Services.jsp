<%@page import="com.pritam.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.pritam.helper.FactoryProvider"%>
<%@page import="com.pritam.dao.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<title>Service 1</title>
<!-- 	<link href="css/Admin.css" rel="stylesheet" type="text/css" /> -->
	<link href="css/Services.css" rel="stylesheet" type="text/css" />
	<%@include file="components/common_css_js.jsp" %>
</head>

<body>

	<div class="container1">
		<div class="navigation">
			<ul>

				<li>
					<a href="#">
						<span class="icon"><ion-icon name="home-outline"></ion-icon></span>
						<span class="title"><h3>Thakar Logistics</h3></span>
					</a>
				</li>

				<li>
					<a href="AdminTrack.jsp">
						<span class="icon"><ion-icon name="home-outline"></ion-icon></span>
						<span class="title">Dashboard</span>
					</a>
				</li>

				<li>
					<a href="Services.jsp">
						<span class="icon"><ion-icon name="people-outline"></ion-icon></span>
						<span class="title">Services</span>
					</a>
				</li>

				<li>
					<a href="Categories.jsp">
						<span class="icon"><ion-icon name="chatbox-ellipses-outline"></ion-icon></span>
						<span class="title">Categories</span>
					</a>
				</li>

				<li>
					<a href="Drivers.jsp">
						<span class="icon"><ion-icon name="people-outline"></ion-icon></span>
						<span class="title">Drivers</span>
					</a>
				</li>

				<li>
					<a href="TrackSearch.jsp">
						<span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
						<span class="title">Tracking</span>
					</a>
				</li>

				<li>
					<a href="#">
						<span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
						<span class="title">Password</span>
					</a>
				</li>
				<li>
					<a href="logout">
						<span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
						<span class="title">Sign Out</span>
					</a>
				</li>

			</ul>
		</div>

		<div class="main">
			<div class="topbar">
				<div class="toggle">
					<ion-icon name="menu-outline"></ion-icon>
				</div>
				<div class="search">
					<label for="">
						<input type="text" name="" id="" placeholder="search here">
						<ion-icon name="search-outline"></ion-icon>
					</label>
				</div>
				<div class="user">
					<!-- <img src="https://randomuser.me/api/portraits/men/79.jpg" alt="userimage"> -->
					<h2>Hello Admin</h2>
				</div>
			</div>
			<div class="cardBox">
				<div class="card">
					<div>
						<div class="numbers">10</div>
						<div class="cardName"><h3>Services</h3></div>
					</div>
					<div class="iconBox">
						<ion-icon name="eye-outline"></ion-icon>
					</div>
				</div>
				<!-- 		<div class="card">
					<div>
						<div class="numbers">10</div>
						<div class="cardName">Services</</div>
					</div>
					<div class="iconBox">
						<ion-icon name="eye-outline"></ion-icon>
					</div>
				</div> -->
				<div class="boxmainbody" data-toggle="modal" data-target="#exampleModal1">
					<h1 style="text-align: center" class="cardName">Add Services</h1>
					<div class="boxsubbody">
						<h3 style="text-align: center">Click Here</h3>
					</div>
				</div>
			</div>

		</div>
</div>
		<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Fill Services Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         <form action="FileUpload" method="post" enctype="multipart/form-data">
       	
       		<!-- <input type="hidden" name="operation" value="addservice"> -->
        	<div class="form-group">
        		<input type="text" class="form-control" name="serviceName" placeholder="Enter Service Name" required="required">
        	</div>
        	<div class="form-group">
        		<textarea class="form-control" name="serviceDescription" placeholder="Enter Service Description" required="required"></textarea>
        	</div>
        	
        <%-- 	<%
        		CategoryDao cDao = new CategoryDao(FactoryProvider.getFactory());
        		List<Category> list = cDao.getCategories();
        	
        	%>
        	<div class="form-group">
        		<select name="catId" class="form-control" id="" >
        		
        		<%
        			for(Category c:list){
        		%>
        			<option value="<%= c.getC_Id()%>"><%= c.getC_Title() %></option>
        			
        		<% } %>
        			<!-- <option value="laptop">Laptop</option>
        			<option value="laptop">Laptop</option> -->
        		</select>
        	</div> --%>
        	<div class="form-group">
        		<label for="servicePicture">Upload Service Picture</label>
        		<br>
        		<input type="file" id="sPicture" name="servicePicture" required>
        	</div>
        	<div class="container text-center">
        		<button class="btn btn-outline-success">Add Service</button>
        		<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        	</div>
        
        </form>
      </div>
    </div>
  </div>
</div>
	<!-- <script type="module" src="common.js"></script> -->
	<!-- <script type="text/javascript" src="dynamicheaderfooter.js"> -->

	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script src="js/Adminscript.js"></script>
</body>
</html>