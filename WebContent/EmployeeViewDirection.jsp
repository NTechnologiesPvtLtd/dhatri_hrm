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
<title>Insert title here</title>
<link href="font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" media="all" href="stylesheets/animate.css"/>
<script type="text/javascript" src="employeeValidation.js">

</script>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
	
</head>
<body>
<%SharedObject.setRequest(request); %>

	
	<div id="nav">
		<h1>
			<a href="index.jsp">Dhatsol IT Solutions</a>
		</h1>

		
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="user.jsp">Login</a></li>
		


			<div class="dropdown">
				<button class="dropbtn">
					Employee <i class="fa fa-caret-down" id="active"></i>
				</button>
				<div class="dropdown-content">
					<a href="EmployeeRegistration.jsp">New Registration</a> <a href="#">Response
						Approved</a>
						<a href="EmployeeViewDirection.jsp">Search Employee</a>
						<a href="user.jsp">Login</a>

				</div>
			</div>

			<li><a href="Aboutus.html">about us</a></li>
		</ul>
	</div>

	</div>	
	<div id="#mainform">
		<br> <br>

		<div class="container" style="background-color:#ddd";>
			<center>
				<h1 style="color:black";"padding:50%"; "margin-top:50%"; "height:20%";>
					
				</h1>
				<hr>
				
				
		

   <a href="EmployeeView.jsp"><blink>Display All Employes</blink></a> 
    <br><br><br><br>
	<form action="SingleEmployeeView.jsp" >
	
	Enter EmployeeId:<input type="text" name="req" id="empId" style="color:black";>
	<input type="submit" value="submit">
	
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

				
				</div>
				</form>
				</center>
				</div>
				
</body>
</html>
