<!--<%-->
<!--	if(session.getAttribute("name")==null){-->
<!--		response.sendRedirect("login.jsp");-->
<!--	}-->
<!--%>-->
<%@page import="com.pritam.helper.FactoryProvider"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Thakar Logistics Services | Kothrud</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<!--  <link href="css/index-styles.css" rel="stylesheet" /> -->
<link href="css/HomeStyle.css" rel="stylesheet" />
</head>
<body>
 <header>
    <a href="#" class="brand">Thakar Logistics Services</a>
    <div class="menu-btn"></div>
    <div class="navigation">
      <div class="navigation-items">
        <a href="index.jsp">Home</a>
        <a href="#">About</a>
        <a href="#">Explore</a>
        <a href="HomeServices.jsp">Services</a>
        <a href="#">Contact</a>
        <a href="login.jsp">Signin</a>
        <a href="registration.jsp">SignUp</a>

      </div>
    </div>
  </header>

  <section class="home">
    <video class="video-slide active" src="videos/1.mp4" autoplay muted loop></video>
    <video class="video-slide" src="videos/2.mp4" autoplay muted loop></video>
    <video class="video-slide" src="videos/3.mp4" autoplay muted loop></video>
    <video class="video-slide" src="videos/4.mp4" autoplay muted loop></video>
    <video class="video-slide" src="videos/5.mp4" autoplay muted loop></video>
    <div class="content active">
      <h1>Thakar<br><span>Logistics</span></h1>
      <p>Thakar Logistics is a best Logistics services provider. </p>
      <a href="#">Read More</a>
    </div>
    <div class="content">
      <h1>Thakar<br><span>Logistics</span></h1>
      <p>Thakar Logistics is a best Logistics services provider. </p>
      <a href="#">Read More</a>
    </div>
    <div class="content">
      <h1>Thakar<br><span>Logistics</span></h1>
      <p>Thakar Logistics is a best Logistics services provider. </p>
      <a href="#">Read More</a>
    </div>
    <div class="content">
      <h1>Thakar<br><span>Logistics</span></h1>
      <p>Thakar Logistics is a best Logistics services provider. </p>
      <a href="#">Read More</a>
    </div>
    <div class="content">
      <h1>Thakar<br><span>Logistics</span></h1>
      <p>Thakar Logistics is a best Logistics services provider. </p>
      <a href="#">Read More</a>
    </div>
    <div class="media-icons">
      <a href="https://www.facebook.com/pritam.magdumpm/"><i class="fab fa-facebook-f"></i></a>
      <a href="https://www.instagram.com/pritam_magdum_72_12/"><i class="fab fa-instagram"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
    </div>
    <div class="slider-navigation">
      <div class="nav-btn active"></div>
      <div class="nav-btn"></div>
      <div class="nav-btn"></div>
      <div class="nav-btn"></div>
      <div class="nav-btn"></div>
    </div>
  </section>
  <h1>Testing Session factory</h1>
  <%
  		out.println(FactoryProvider.getFactory());
 
  %>

  <script type="text/javascript">
    //Javacript for responsive navigation menu
    const menuBtn = document.querySelector(".menu-btn");
    const navigation = document.querySelector(".navigation");

    menuBtn.addEventListener("click", () => {
      menuBtn.classList.toggle("active");
      navigation.classList.toggle("active");
    });

    //Javacript for video slider navigation
    const btns = document.querySelectorAll(".nav-btn");
    const slides = document.querySelectorAll(".video-slide");
    const contents = document.querySelectorAll(".content");

    var sliderNav = function (manual) {
      btns.forEach((btn) => {
        btn.classList.remove("active");
      });

      slides.forEach((slide) => {
        slide.classList.remove("active");
      });

      contents.forEach((content) => {
        content.classList.remove("active");
      });

      btns[manual].classList.add("active");
      slides[manual].classList.add("active");
      contents[manual].classList.add("active");
    }

    btns.forEach((btn, i) => {
      btn.addEventListener("click", () => {
        sliderNav(i);
      });
    });
  </script>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
