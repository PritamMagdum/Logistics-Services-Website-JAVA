<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 500px; /* Should be removed. Only for demonstration */
}
.column h2{
	font-family: baloo-bhai;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.column1 {
  float: left;
  width: 50%;
  padding: 10px;
  text-align:center;
  background-color:#eef2f4;
  border-bottom:1px solid black;
  border-top:1px solid black;
}

/* Clear floats after the columns */
.row1:after {
  content: "";
  display: table;
  clear: both;
}
</style>
</head>
<body>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Logistics?useSSL=false","root","SPlove@1622");
	Statement st = con.createStatement();
	
	String user = request.getParameter("user");
	String sqlstr = "select * from Track where Track_Number='"+user+"'";
	
	ResultSet rs = st.executeQuery(sqlstr);
	
	/* Object dispatcher;
	Object RequestDispatcher = dispatcher = null;
	
	if(rs == null){
		dispatcher = request.getRequestDispatcher("index.jsp");
	} */
	while(rs.next()){
	
	%>
		
	
<div class="row1">
	<div class="column1">
	<h2>Customer Details</h2>
	</div>
	<div class="column1">
	<h2>Service Details</h2>
	</div>
</div>



<div class="row">
  <div class="column" style="background-color:#eef2f4;">
    <h2>Costumer Name : <%=rs.getString("c_Name") %></h2>
    <h2>Costumer Address : <%=rs.getString("c_Address") %></h2>
    <h2>Costumer Mo. No. : <%=rs.getString("c_Mobile") %></h2>
    <h2>Departure : <%=rs.getString("Departure") %></h2>
    <h2>Arrival : <%=rs.getString("Arrival") %></h2>
    <h2>Delivery : <%=rs.getString("Delivery") %></h2>
    <h2>Mode : <%=rs.getString("Mode") %></h2>
    <h2>Total Weight (KG) : <%=rs.getString("Weight") %></h2>
    <h2>Dimension (CM) : <%=rs.getString("Dimension") %></h2>
    <h2>Booking Date : <%=rs.getString("Booking_Date") %></h2>
     
  </div>
  <div class="column" style="background-color:#eef2f4; border-left:1px solid black">
    <h2>Driver Name : <%=rs.getString("d_Name") %></h2>
    <h2>Driver Mo. No. : <%=rs.getString("d_Mobile") %></h2>
    <h2>Service Description : <%=rs.getString("s_Description") %></h2>
    <h2>Ammount : <%=rs.getString("Amount") %></h2>
    <h2>Payment Mode : <%=rs.getString("p_Mode") %></h2>
    <h2>Payment Status : <%=rs.getString("p_Status") %></h2>
    <h2>Vehicle Number : <%=rs.getString("v_Number") %></h2>
    <h2>Tracking Number : <%=rs.getString("Track_Number") %></h2>
    
  </div>
</div>
<%
	}
	System.out.println("Username is "+ user);
	System.out.println(rs);
}catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>
