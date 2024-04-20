<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Thakar Logistics Services</title>
<link rel="stylesheet" href="css/DemoAdmin.css">
<link rel="stylesheet" href="css/AdminHomeStyle.css">

</head>
<body>
	
	  <header>
    <a href="#" class="brand">Thakar Logistics Services</a>
    <div class="menu-btn"></div>
    <div class="navigation">
      <div class="navigation-items">
        <a href="#">Home</a>
       <!--  <a href="#">About</a> -->
        <!-- <a href="#">Explore</a>
        <a href="#">Services</a>
        <a href="#">Track</a>
        <a href="#">Contact</a> -->
        <a href="#"><%=session.getAttribute("name") %></a>
        <a href="logout">Logout</a>
     <%--    <ul>
          <li>
            <a href="#"><%=session.getAttribute("name") %></a>
            <ul class="dropdown">
              <li><a href="logout">Logout</a></li>
            </ul>
          </li>
        </ul>
 --%>
      </div>
    </div>
  </header>
  
<%@include file="components/common_css_js.jsp" %>
  
  <div class="container admin">
  
		<h1>This is Admin</h1>
		<!-- First Row -->
		<div class="row">
		
			<div class="col-md-4">
			
				<div class="card">
				
					<div class="card-body text-center">
						<div class="container">
						<img style="max-width: 200px" alt="Users Image" src="images/Users.png">
						</div>
						<h1>10</h1>
						<h1 class="text-Uppercase text-muted">Users</h1>
						
						
					</div>
					
				</div>
				
			</div>
			
			<div class="col-md-4">
			
			<div class="card">
				
					<div class="card-body text-center">
						<div class="container">
						<img style="max-width: 200px" alt="Users Image" src="images/Users.png">
						</div>
						<h1>10</h1>
						<h1 class="text-Uppercase text-muted">Services</h1>
						
						
					</div>
					
				</div>
			
			</div>
			
			<div class="col-md-4">
			
			<div class="card">
				
					<div class="card-body text-center">
						<div class="container">
						<img style="max-width: 200px" alt="Users Image" src="images/Users.png">
						</div>
						<h1>10</h1>
						<h1 class="text-Uppercase text-muted">Drivers</h1>
						
						
					</div>
					
				</div>
			
			</div>
			
		</div>
		
		<!-- Second Row -->
		<div class="row mt-3">
			<div class="col-md-6">
				<div class="card">
				
					<div class="card-body text-center" data-toggle="modal" data-target="#AddModal">
						<div class="container">
						<img style="max-width: 200px" alt="Users Image" src="images/Users.png">
						</div>
						<p class="mt-3">Click here to add Services</p>
						<h1 class="text-Uppercase text-muted">Add Services</h1>
						
						
					</div>
					
				</div>
		</div>
		
		<div class="col-md-6">
			<div class="card">
				
					<div class="card-body text-center">
						<div class="container">
						<img style="max-width: 200px" alt="Users Image" src="images/Users.png">
						</div>
						<p class="mt-3">Click here to add Drivers</p>
						<h1 class="text-Uppercase text-muted">Add Drivers</h1>
						
						
					</div>
					
				</div>
		</div>
		</div>
  </div>
  

<!-- Modal -->
<div class="modal fade" id="AddModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Services</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal End -->
</body>
</html>