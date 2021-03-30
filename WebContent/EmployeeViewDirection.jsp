<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.hrm.bean.EmployeeBean"%>
    <%@page import="com.hrm.session.SharedObject"%>
<%@page import="java.util.List"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EmployeeViewDirection</title>

<script type="text/javascript" src="employeeValidation.js"></script>
<script type="text/javascript" src="jsFiles/searchAjax.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>

div {text-align: center;}
</style>
	
</head>
<body>
<%SharedObject.setSession(request.getSession()); %>

<div class="container-fluid">
	<nav class="navbar navbar-expand-sm bg-dark fixed-top navbar-dark">
	
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp"><strong>Dhatsol It Solutions</strong></a>
		</div>
  		<ul class="navbar-nav ml-auto">
    		<li class="nav-item active">
      			<a class="nav-link"  href="index.jsp"><strong>Home</strong></a>
    		</li>
    		<li class="dropdown nav-item active" ><a class=" nav-link dropdown-toggle" data-toggle="dropdown" href="#"><strong>Employee</strong> <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="Employee.jsp">New Registration</a></li>
					<li><a href="#">Response Approved</a></li>
					<li><a href="EmployeeViewDirection.jsp">Search Employee</a></li>
				</ul>
   			<li class="nav-item active"> <a class="nav-link" href="Login.jsp"><strong>Login</strong></a></li>
    		<li class="nav-item active"><a class="nav-link" href="Aboutus3.jsp"><strong>Aboutus</strong></a></li>
  		</ul>
  	
	</nav>
</div>
<br>
<br>
<br>

<div id="#mainform">
		<br> <br>
	<div class="container" style="background-image:url(color.jpg)";>
		<h1 style="color:black"; "padding:50%"; "margin-top:50%";  "height:20%";></h1>
		<hr>
				
		<a href="EmployeeView.jsp">Display All Employees Data</a> 
    	<br><br><br><br>
		<form action="SingleEmployeeView.jsp" >
			EnterEmployeeId:
			<input type="text" name="empId" id="empId" style="color:black">
			<input type="submit" value="submit" onclick="sendInfo()">
			<div id="searchResults"></div>
	
		</form>	
	</div>
</div>
				
</body>
</html>
