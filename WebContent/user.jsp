<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Dhatsol</title>



<link href="stylesheets\bootstrap.css" rel="stylesheet" />
<link href="stylesheets\newstyle.css" rel="stylesheet" />
<link href="stylesheets\custom.css" rel="stylesheet" />
<link
	href='https://fonts.googleapis.com/css?family=Cambo|Poppins:400,600'
	rel='stylesheet' type='text/css'>
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">

<link rel="stylesheet" media="all" href="stylesheets/animate.css" />

<script type="text/javascript" src="employeeValidation.js">
</script>



</head>
<body>

	<nav class="navbar navbar-default navbar-fixed-top"> <!-- if you want to keep the navbar hidden you can add this class to the navbar "navbar-burger"-->
	<div class="container">
		<div class="navbar-header">
			<button id="menu-toggle" type="button" class="navbar-toggle"
				data-toggle="collapse" data-target="#example">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar bar1"></span> <span class="icon-bar bar2"></span> <span
					class="icon-bar bar3"></span>
			</button>
			<a href="#" class="navbar-brand"> <strong>Dhatsol IT
					Solutions</strong>
			</a>
			<%SharedObject.setSession(request.getSession()); %>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right navbar-uppercase">
				<li><a href="Home.jsp"><i class="fa fa-home"></i>Home</a></li>
				<li class="dropdown"><a href="#gaia" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="fa fa-sliders"></i> Employee
				</a>
					<ul class="dropdown-menu dropdown-danger">
						<li><a href="Employee.jsp">New Registration</a></li>
						<li><a href="#">Response Approved</a></li>
						<li><a href="EmployeeView.jsp">Search Employee</a></li>

					</ul></li>
				<li><a class="nav-link" href="#myModal" class="trigger-btn"
					data-toggle="modal"><i class="fa fa-sign-in"></i>Login</a></li>
				<li><a href="Aboutus.jsp">About Us</a></li>
				<li class="dropdown"><a href="#gaia" class="dropdown-toggle"
					data-toggle="dropdown"> <i class="fa fa-sliders"></i> Services
				</a>
					<ul class="dropdown-menu dropdown-danger">
						<li><a href="#"> Software Development</a></li>
						<li><a href="#">New Technologies Applications</a></li>
						<li><a href="#"> Database Management</a></li>
						<li><a href="#"> IT Consulting</a></li>
					</ul></li>
				<li><a href="#" class="btn btn-danger btn-fill">Contact Us</a>
				</li>
			</ul>
		</div>

	</div>
	</nav>


	<div class="container">
		<div id="#mainform">

			<div class="loginbox">

				<br> <br>
				<h1>LOGIN HERE</h1>
				<div class="text-center" id="errorMsg">
				<h5><strong><%String errorMgs="";
			
			Object obj= SharedObject.getFromSession(EmployeeConstants.ERROR_MSG_UI); 
			if(null !=obj){
				errorMgs=(String)obj;
				out.print(errorMgs);
			}
			%></strong>
				
				</h5>
					
				</div>


				<form action="LoginServlet" method="post">
					<p>
						<b>EmployeeId<b> <input type="text"
								onkeypress="clearForm()" id="loginId" name="employeeId"
								placeholder="Enter employeeId" required>
					</p>
					<p id="errorMsg" style="color: red; background-color: orange";></p>
					<p>Password</p>
					<input type="password" onkeypress="clearForm()" id="Password"
						name="mobileNumber" placeholder="Enter password" required><br>
					<p id="errorMsg1" style="color: red; background-color: orange";></p>


					<p>Type</p>

					<select name="type" id="type" checked>
						<option value="employee">Enter Given Type</option>
						<option value="employee">Employee</option>
						<option value="employeer">employeer</option>
						<option value="admin">admin</option>
						<option value="hr">hr</option>
					</select> <br> <br> <input type="submit"
						onclick="return loginValidation()" value="login"><br>
					<a href="#">forgot password</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#">don't
						have a account</a>
				</form>
			</div>
		</div>

	</div>


	<footer class="footer footer-big footer-color-black" data-color="black">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-3">
				<div class="info ">
					<h5 class="title">
						<center>About Company</center>
					</h5>
					<p class="text-center">We helps customers do business better by
						leveraging our industry-wide,deep technology expertise,
						comprehensive portfolio of services and vertically aligned
						business model.</p>
				</div>
			</div>
			<div class="col-md-3 col-md-offset-1 col-sm-3">
				<div class="info">
					<h5 class="title">Services</h5>
					<nav>
					<ul>
						<li><a href="#">Software Development</a></li>
						<li><a href="#">New Technologies Applications</a></li>
						<li><a href="#">Database Management</a></li>
						<li><a href="#">IT Consulting</a></li>
					</ul>
					</nav>
				</div>
			</div>
			<div class="col-md-3 col-sm-3">
				<div class="info">
					<h5 class="title">Contact</h5>
					<nav>
					<ul>
						<li>

							<address>

								<p>
									PJR Arcade<br> Plot No. 129/A, Suite #2, <br> Sri Sai
									Nagar,<br> Kukatpally, Hyderabad - 500085<br> Ph::
									040 48520666 <br> E-Mail:: hr@dhatsol.com <br>
								</p>
							</address>
						</li>
					</ul>
					</nav>
				</div>
			</div>
			<div class="col-md-2 col-md-offset-1 col-sm-3">
				<div class="info">
					<h5 class="title">Follow us on</h5>
					<nav>
					<ul>
						<li><a href="#"
							class="btn btn-social btn-facebook btn-simple"> <i
								class="fa fa-facebook-square"></i> Facebook
						</a></li>

						<li><a href="#" class="btn btn-social btn-twitter btn-simple">
								<i class="fa fa-twitter"></i> Twitter
						</a></li>
						<li><a href="#" class="btn btn-social btn-reddit btn-simple">
								<i class="fa fa-google-plus-square"></i> Google+
						</a></li>
					</ul>
					</nav>
				</div>
			</div>
		</div>
		<hr>
		<div class="copyright">
			©
			<script> document.write(new Date().getFullYear()) </script>
			Dhatsol IT Solutions
		</div>
	</div>
	</footer>



	<script src="jsFiles\jquery.min.js" type="text/javascript"></script>
	<script src="jsFiles\bootstrap.js" type="text/javascript"></script>
	<script type="text/javascript" src="jsFiles\modernizr.js"></script>
	<script type="text/javascript" src="jsFiles\gaia.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

</body>
</html>