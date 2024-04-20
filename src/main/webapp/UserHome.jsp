<%-- <%@page import="com.pritam.registration.login"%>
<%
	login user = (login)session.getAttribute("current-user");
	if(user == null){
		out.println("login first");
		return;
	}
%>
 --%>
 
 
<%@page import="com.pritam.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <title>Thakar Logistics | Kothrud</title>
  <link rel="stylesheet" href="css/UserHomeStyle.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
</head>

<body>

  <!-- <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Explore</a></li>
    <li><a href="#">Services</a></li>
    <li><a href="#">Track</a></li>
    <li><a href="#">Contact</li>
    <li>
      <a href="#">Name</a>
      <ul class="dropdown">
        <li><a href="#">Logout</a></li>
      </ul>
    </li>
  </ul> -->

  <header>
    <a href="#" class="brand">Thakar Logistics Services</a>
    <div class="menu-btn"></div>
    <div class="navigation">
      <div class="navigation-items">
        <a href="UserHome.jsp">Home</a>
        <a href="#">About</a>
        <a href="#">Explore</a>
        <a href="UserServices.jsp">Services</a>
        <a href="#">Track</a>
        <a href="#">Contact</a>
        <a href="#"><%=session.getAttribute("uid") %></a>
        <ul>
          <li>
            <a href="#"><%=session.getAttribute("name") %></a>
            <ul class="dropdown">
              <li><a href="#">Profile</a></li>
              <li><a href="logout">Logout</a></li>
            </ul>
          </li>
        </ul>

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

</body>

</html>