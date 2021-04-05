
<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta charset="ISO-8859-1">
	<title>AdminLoginView</title>
	<meta name="viewport" content="width=device-width, intial-scale=1">
	
		<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<style>
	body
	{
		 background-image: url("https://images.unsplash.com/photo-1596079890744-c1a0462d0975?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8b2ZmaWNlfGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80"); /* The image used */
  background-color: #cccccc; /* Used if the image is unavailable */
  height: 500px; /* You must set a specified height */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; /* Resize the background image to cover the entire container */
	}
	.container-fluid
	{
	background-color:#dcdcdc;
	color:green;
	font-family:verdana;
	width:100%;
	font-size:30px;
	}
	
	.bg2
	{
	background-color: rgba(28, 208, 214,0.6);
	
	}
</style>

</head>
<body>

	<div class="container-fluid ">
		<h1>Dhatsol IT solutions</h1>
	</div>
	
		<div class="dropdown">
  			<a href="#" class="col-md-2 btn btn-primary dropdown-toggle " data-toggle="dropdown">
   			 <h3>Employee</h3>
 		 </a>
 		 <div class="dropdown-menu" >
    		<a class="dropdown-item " href="#"><h3>New Registration</h3></a><br>
    		<a class="dropdown-item " href="#"><h3>Response Approved</h3></a><br>
    		<a class="dropdown-item " href="searchemployee.jsp"><h3>Search Employee</h3></a>
 		 </div>
		</div>
		<a href="#" class="col-md-2 btn btn-primary " ><h3>Home</h3></a>
		<a href="#" class="col-md-2 btn btn-primary " ><h3>Update profile</h3></a>
		<a href="#" class="col-md-2 btn btn-primary " ><h3>Pay Slip</h3></a>
		<a href="viewrequests.jsp" class="col-md-2 btn btn-primary " ><h3>view request</h3></a>
		<a href="#" class="col-md-2 btn btn-primary " ><h3>Logout</h3></a>
		
		
	
	<div>
	</div>
		
		<form action="SearchData" method="post">
		<input type="submit" value="submit" class="btn btn-success" id="submit" >
		</form>

</body>
</html>

