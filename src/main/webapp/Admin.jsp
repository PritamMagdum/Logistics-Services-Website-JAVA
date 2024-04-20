<%-- <%

	if(session.getAttribute("name")==null)
	{
		response.sendRedirect("login.jsp");
	}
%> --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width">
	<title>Admin Dashboard</title>
	<link href="css/Admin.css" rel="stylesheet" type="text/css" />
</head>

<body>

	<div class="container">
		<div class="navigation">
			<ul>

				<li>
					<a href="#">
						<span class="icon"><ion-icon name="home-outline"></ion-icon></span>
						<span class="title"><h2>Thakar Logistics</h2></span>
					</a>
				</li>

				<li>
					<a href="Admin.jsp">
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
						<span class="icon"><ion-icon name="help-outline"></ion-icon></span>
						<span class="title">Drivers</span>
					</a>
				</li>

				<li>
					<a href="#">
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
						<div class="numbers">1256</div>
						<div style="text-align: center" class="cardName">users</div>
					</div>
					<div class="iconBox">
						<ion-icon name="people-outline"></ion-icon>
					</div>
				</div>
				<div class="card">
					<div>
						<div class="numbers">10</div>
						<div class="cardName">Services</div>
					</div>
					<div class="iconBox">
						<ion-icon name="eye-outline"></ion-icon>
					</div>
				</div>
				<div class="card">
					<div>
						<div class="numbers">25</div>
						<div class="cardName">Categories</div>
						
					</div>
					<div class="iconBox">
						<ion-icon name="eye-outline"></ion-icon>
					</div>
				</div>
				<div class="card">
					<div>
						<div class="numbers">50</div>
						<div class="cardName">Drivers</div>
					</div>
					<div class="iconBox">
						<ion-icon name="eye-outline"></ion-icon>
					</div>
				</div>
			</div>

			<div class="details">
				<div class="recentOrders">
					<div class="cardHeader">
						<h2>Recent Orders</h2>
						<a href="#" class="btn">View all</a>
					</div>
					<table class="table">
						<thead>
							<tr>
								<td>Name</td>
								<td>Price</td>
								<td>Payments</td>
								<td>Status</td>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>Item name</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status delivered">Delivered</span></td>
							</tr>

							<tr>
								<td>Item name</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status pending">Pending</span></td>
							</tr>

							<tr>
								<td>Item name</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status delivered">Delivered</span></td>
							</tr>

							<tr>
								<td>Item name</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status pending">Pending</span></td>
							</tr>

							<tr>
								<td>Item name</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status delivered">Delivered</span></td>
							</tr>

							<tr>
								<td>Item name</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status delivered">Delivered</span></td>
							</tr>

							<tr>
								<td>Item name</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status return">Return</span></td>
							</tr>
						</tbody>
					</table>
				</div>


				<div class="recentCustomers">
					<div class="cardHeader">
						<h2>Recent Customer</h2>
					</div>
					<table>
						<tr>
							<td width="60px">
								<div class="imgBox">
									<img src="https://randomuser.me/api/portraits/men/79.jpg" alt="">
								</div>
							</td>
							<td>
								<h4>Rohit</h4><span>India</span>
							</td>
						</tr>
						<tr>
							<td width="60px">
								<div class="imgBox">
									<img src="https://randomuser.me/api/portraits/men/9.jpg" alt="">
								</div>
							</td>
							<td>
								<h4>Rohit</h4><span>India</span>
							</td>
						</tr>
						<tr>
							<td width="60px">
								<div class="imgBox">
									<img src="https://randomuser.me/api/portraits/men/29.jpg" alt="">
								</div>
							</td>
							<td>
								<h4>Rohit</h4><span>India</span>
							</td>
						</tr>
						<tr>
							<td width="60px">
								<div class="imgBox">
									<img src="https://randomuser.me/api/portraits/men/85.jpg" alt="">
								</div>
							</td>
							<td>
								<h4>Rohit</h4><span>India</span>
							</td>
						</tr>
						<tr>
							<td width="60px">
								<div class="imgBox">
									<img src="https://randomuser.me/api/portraits/men/12.jpg" alt="">
								</div>
							</td>
							<td>
								<h4>Rohit</h4><span>India</span>
							</td>
						</tr>
						<tr>
							<td width="60px">
								<div class="imgBox">
									<img src="https://randomuser.me/api/portraits/men/17.jpg" alt="">
								</div>
							</td>
							<td>
								<h4>Rohit</h4><span>India</span>
							</td>
						</tr>
						<tr>
							<td width="60px">
								<div class="imgBox">
									<img src="https://randomuser.me/api/portraits/men/11.jpg" alt="">
								</div>
							</td>
							<td>
								<h4>Rohit</h4><span>India</span>
							</td>
						</tr>
					</table>
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