<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dhatsol</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" media="all" href="stylesheets/animate.css">
</head>
<body>
<%SharedObject.setSession(session); %>
	<div id="nav">
		<h1>
			<a href="index.jsp">Dhatsol IT Solutions</a>
		</h1>

		<nav>
		<ul>
			<li id="active"><a href="index.jsp">Home</a></li>



			<li><a href="Login.jsp">Login</a></li>
			

			<div class="dropdown">
				<button class="dropbtn">
					Employee <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="EmployeeRegistration.jsp">New Registration</a>
					 <a href="#">ResponseApproved</a>
						
						<a href="EmployeeViewDirection.jsp">Search Employee</a>
						<a href="Login.jsp">Login</a>
						

				</div>
			</div>


			<li><a href="Aboutus3.jsp">about us</a></li>
		</ul>
	</div>
	<div id="#mainform">
	<div class="container" style="background-image:url(pg1.jpg)";><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br>
			<center>
				<h1 style="width:100%;height:100%";>
					
				</h1>
				<hr>
				<form >
				<div class="panel panel-default"></div>
	
	
	</div>
	
</body>
</html>


