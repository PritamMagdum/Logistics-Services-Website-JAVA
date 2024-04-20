<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Track Your Asset</title>

<style>
.center {
  text-align: center;
  border: 3px solid green;
  padding:50px
}
.btn{
	height:30px;
	width:100px
}

.user{
	height:25px;
	width:450px
}
</style>
</head>
<body class="center">

	<h1>Track Your Product / Delivery Status</h1>
	<form action="./TrackResult.jsp">
		<input type="text" class="user" name="user">
		<input type="submit" class="btn" value="Track">
	</form>



</body>
</html>