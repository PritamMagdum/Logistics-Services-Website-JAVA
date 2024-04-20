<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Registration Page</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<link rel="stylesheet" href="css/sweetalert.css">

</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
					
					<%@include file="components/message.jsp" %>
					
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="RegisterServlet" class="register-form" id="register-form">
						<!-- <form method="post" action="register" class="register-form" id="register-form"> -->
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" required="required" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" required="required" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" required="required" />
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" required="required" />
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" required="required" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">I am already
							member</a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="js/sweetalert.min.js" ></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>">
	<script type="text/javascript">
	
		var status = document.getElementById("status").value;
		if(status == "success"){
			swal("Congrats","Account Created Succesfully",userId,"success");
		}
		if(status == "invalidNmae"){
			swal("Sorry","Please Enter Name","error");
		}
		if(status == "invalidEmail"){
			swal("Sorry","Please Enter Email","error");
		}
		if(status == "invalidMobile"){
			swal("Sorry","Please Enter Mobile","error");
		}
		if(status == "invalidPassword"){
			swal("Sorry","Please Enter Password","error");
		}
		if(status == "invalidConfirmPassword"){
			swal("Sorry","Please Enter Correct Confirm Password","error");
		}
		if(status == "invalidMobileLength"){
			swal("Sorry","Please Enter Mobile Number in Only 10 digit","error");
		}
	
	</script>
	<script type="text/javascript">
		$("#signup").click(function()
		{
			var name= $("#name").val();
			var email= $("#email").val();
			var pass= $("#pass").val();
			var re_pass= $("#re_pass").val();
			var contact= $("#contact").val();
			var agree-term= $("#agree-term").val();
			
			if(name == "" || email == "" || pass == "" || re_pass == "" || contact == "" || agree-term == "")
			{
				swal("Sorry","Something is missing to form filling","error");
			}else
			{
				swal({
					title: "Successfully Register!!",
					text: "User Added Successfully",
					icon: "success",
					button: "ok",
				});
			}
			
		}
		
	
	
	
	</script>

</body>

</html>