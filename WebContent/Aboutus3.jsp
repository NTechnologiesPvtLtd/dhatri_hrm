

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dhatsol</title>

<link href="font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" media="all" href="stylesheets/animate.css"/>
<script type="text/javascript" src="jsFiles/aboutusValidation.js">

</script>
	
</head>
<body>
	<div id="nav">
	
		<h1>
			<a href="index.jsp">Dhatsol IT Solutions</a>
		</h1>

		<nav>
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="Login.jsp">Login</a></li>
		


			<div class="dropdown">
				<button class="dropbtn">
					Employee <em class="fa fa-caret-down" id="active"></em>
				</button>
				<div class="dropdown-content">
					<a href="EmployeeRegistration.jsp">New Registration</a> <a href="#">Response
						Approved</a>
						<a href="EmployeeViewDirection.jsp">Search Employee</a>
						<a href="Login.jsp">Login</a>

				</div>
			</div>

			<li><a href="Aboutus.html">about us</a></li>
		</ul>
	</div>

	</div>	
	<div id="#mainform">
		

		<div class="container" style="background-image:url(blue.jpg)";>
			<center>
				<h1 style="color:red padding:50% margin-top:50% height:20%";>
					
				</h1>
				<hr>
				<form action="RegistrationServlet" method="post">
				<div class="panel panel-default">
					<h2>ADDRESS  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MAP</h2>
			
					 <br><tr> <td><div align="left"> DHATSOL IT SOLUTIONS</div></td> 
					<tr><div align="left">PJR ARCADE <br></tr>
					<tr>NIZAMPET X ROAD<br></tr>
					 <tr>HYDERABAD</div></tr>
					 <h2>About us<h2>
					 <tr>We are committed to exceeding clients expectations in terms of delivery and mind share. 
					 We nurture a strong scene of discipline and ethics. 
					 Our journey towards achieving managerial excellence has been a long and eventful one.</tr>
				
					 
					<div align="right"><div>
					 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3301.639766087785!2d78.38912751440296!3d17.497715504220437!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb93de421c1c8b%3A0xd519ed11be128485!2sDhatri+Info+Solutions!5e1!3m2!1sen!2sin!4v1541842573517" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
			
			 	
 				</div></br><br>   </br><br> </br><br> </br>
					<h2><center>CONTACT US</center></h2>
					<br><br>
					<table>
						<tr>
							<td>Name:<font color="red">*</font></td>
							<td><input type=text onkeypress="clearForm()" id="firstName"
								name="firstName"><br> <br></td>
								<td>
								<p id="errorMsg" style=color:red;></p></td> 
						</tr>
						
						<tr>
							<td>Email Id:<font color="red">*</font></td>
							<td><input type=text onkeypress="clearForm()" id="emailId"
								name="emailId"><br> <br></td>
								<td><p id="errorMsg5" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Mobile No:<font color="red">*</font></td>
							<td><input type=text onkeypress="clearForm()" id="mobileNumber"
								name="mobileNumber" text-align:right; pattern="[0-9]{10}" title="Mobile number must be 10 digits"  required><br> <br></td>
								<td><p id="errorMsg6" style=color:red;></p></td> 
							
						</tr>
						
						<tr>
							<td>QUERY:<font color="red">*</font></td>
							<td><textarea rows="4" onkeypress="clearForm()" id="query" name="query">
</textarea><br> <br></td>
<td><p id="errorMsg8" style=color:red;></p></td> 
							
						</tr>
						</table>
					<br> <br>
					
					
					<tr>
					<td>	<input type=submit value="Reset" class="button">
					</td>
					&nbsp;&nbsp;&nbsp;
						<td>
						<input type=submit onclick="return clearForm()"
								value="submit" class="button">
								</td>
				</tr>

					</center>
				</div>

				</div>
				</form>
				</div>
				
</body>
</html>