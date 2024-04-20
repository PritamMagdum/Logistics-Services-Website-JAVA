<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Services Page</title>
<link href="css/Admin.css" rel="stylesheet" type="text/css" />
<link href="css/Services.css" rel="stylesheet" type="text/css" />
<%@include file="components/common_css_js.jsp" %>



	<script type="module"
			src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
			src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
			type="text/javascript"></script>
	<script src="js/Adminscript.js" type="text/javascript"></script>
</head>

<body>

	<div class="container">
		<div class="navigation">
			<ul>

				<li><a href="#"> <span class="icon"><ion-icon
								name="home-outline"></ion-icon></span> <span class="title"><h3>Thakar
								Logistics</h3></span>
				</a></li>

				<li><a href="Admin.jsp"> <span class="icon"><ion-icon
								name="home-outline"></ion-icon></span> <span class="title">Dashboard</span>
				</a></li>

				<li><a href="Services.jsp"> <span class="icon"><ion-icon
								name="people-outline"></ion-icon></span> <span class="title">Services</span>
				</a></li>

				<li><a href="Category.jsp"> <span class="icon"><ion-icon
								name="chatbox-ellipses-outline"></ion-icon></span> <span class="title">Categories</span>
				</a></li>

				<li><a href="#"> <span class="icon"><ion-icon
								name="help-outline"></ion-icon></span> <span class="title">Drivers</span>
				</a></li>

				<li><a href="#"> <span class="icon"><ion-icon
								name="settings-outline"></ion-icon></span> <span class="title">Tracking</span>
				</a></li>

				<li><a href="#"> <span class="icon"><ion-icon
								name="lock-closed-outline"></ion-icon></span> <span class="title">Password</span>
				</a></li>
				<li><a href="logout"> <span class="icon"><ion-icon
								name="log-out-outline"></ion-icon></span> <span class="title">Sign
							Out</span>
				</a></li>

			</ul>
		</div>

		<div class="main">
			<div class="topbar">
				<div class="toggle">
					<ion-icon name="menu-outline"></ion-icon>
				</div>
				<div class="search">
					<label for=""> <input type="text" name="" id=""
						placeholder="search here"> <ion-icon name="search-outline"></ion-icon>
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
				<div class="boxmainbody" data-toggle="modal" data-target="#exampleModal">
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
</button>
 -->
<!-- Modal -->
<<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
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
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<script src="js/Adminscript.js"></script>
</body>
</html>