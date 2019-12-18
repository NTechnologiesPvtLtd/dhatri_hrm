<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Dhatsol</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <style>
 
     .carousel-item {
  height: 100vh;
  min-height: 350px;
  background: no-repeat center center scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
</style>
    <style type="text/css">
    body {
		font-family: 'Varela Round', sans-serif;
	}
	.modal-login {
		color: #636363;
		width: 350px;
	}
	.modal-login .modal-content {
		padding: 20px;
		border-radius: 5px;
		border: none;
	}
	.modal-login .modal-header {
		border-bottom: none;
		position: relative;
		justify-content: center;
	}
	.modal-login h4 {
		text-align: center;
		font-size: 26px;
	}
	.modal-login  .form-group {
		position: relative;
	}
	.modal-login i {
		position: absolute;
		left: 13px;
		top: 11px;
		font-size: 18px;
	}
	.modal-login .form-control {
		padding-left: 40px;
	}
	.modal-login .form-control:focus {
		border-color: #00ce81;
	}
	.modal-login .form-control, .modal-login .btn {
		min-height: 40px;
		border-radius: 3px; 
	}
	.modal-login .hint-text {
		text-align: center;
		padding-top: 10px;
	}
	.modal-login .close {
        position: absolute;
		top: -5px;
		right: -5px;
	}
	.modal-login .btn {
		background: #00ce81;
		border: none;
		line-height: normal;
	}
	.modal-login .btn:hover, .modal-login .btn:focus {
		background: #00bf78;
	}
	.modal-login .modal-footer {
		background: #ecf0f1;
		border-color: #dee4e7;
		text-align: center;
		margin: 0 -20px -20px;
		border-radius: 5px;
		font-size: 13px;
		justify-content: center;
	}
	.modal-login .modal-footer a {
		color: #999;
	}
	.trigger-btn {
		display: inline-block;
		margin: 100px auto;
	}
</style>
<script type="text/javascript">
	function loginValidation() {
		var employeeId = document.getElementById("loginId").value;
		var mobileNumber = document.getElementById("Password").value;
		var type = document.getElementById("type").value;
		if (employeeId == null || employeeId == "") {
			document.getElementById("errorMsg").innerHTML = "please enter EmployeeId";
			return false;
		} else if (mobileNumber == null || mobileNumber == "") {
			document.getElementById("errorMsg1").innerHTML = "please enter Password";
			return false;
		} else if (type == "" || type == "None") {
			document.getElementById("errorMsg2").innerHTML = "Enter Given Type";
			return false;
		}

		else
			return true;
	}
	function clearForm() {
		document.getElementById("errorMsg").innerHTML = "";
		document.getElementById("errorMsg1").innerHTML = "";
		document.getElementById("errorMsg2").innerHTML = "";
	}
</script>
</head>
<body>

	<%
		SharedObject.setSession(session);
	%>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function showcommentform() {
			var data = "EmployeeId:<input type='text' name='employeeId'>";

			document.getElementById('location').innerHTML = data;
		}

		function showcommentform1() {
			document.getElementById('location').innerHTML = "";
		}
	</script>
<nav class="navbar navbar-dark bg-dark">
  <div class="container">
    <a class="navbar-brand" href="index.jsp"> Dhatsol It Solutions</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#myModal" class="trigger-btn" data-toggle="modal">Login</a>
        </li>
          
        <li class="nav-item">
          <a class="nav-link" href="Aboutus.jsp">About</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
    
<header>
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
      <!-- Slide One - Set the background image for this slide in the line below -->
      <div class="carousel-item active" style="background-image: url('https://source.unsplash.com/LAaSoL0LrYs/1920x1080')">
        <div class="carousel-caption d-none d-md-block">
        
        </div>
      </div>
      <!-- Slide Two - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://source.unsplash.com/bF2vsubyHcQ/1920x1080')">
        <div class="carousel-caption d-none d-md-block">
         
        </div>
      </div>
      <!-- Slide Three - Set the background image for this slide in the line below -->
      <div class="carousel-item" style="background-image: url('https://source.unsplash.com/szFUQoyvrxM/1920x1080')">
        <div class="carousel-caption d-none d-md-block">
          
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
  </div>
  
    </header>
    <div id="myModal" class="modal fade">
		<div class="modal-dialog modal-login">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Member Login</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">

					<form action="LoginServlet" method="post">
						<div class="form-group">
							<i class="fa fa-user"></i>
	 <input type="text onkeypress="clearForm()" id="loginId" name="employeeId" class="form-control"
								placeholder="EmployeeId" required="required">
						</div>
						<div class="form-group">
							<i class="fa fa-lock"></i>
							 <input type="password"class="form-control" onkeypress="clearForm()" id="Password"
								name="mobileNumber" placeholder="Enter password"
								required="required">
						</div>
						<div class="form-group">
							<p>Type</p>
							<select name="type" class="form-control" onkeypress="clearForm()"
								id="type">
								<option value="None">Enter Given Type</option>
								<option value="employee">EMPLOYEE</option>
								<option value="employeer"> Employeer</option>
								<option value="admin">ADMIN</option>
								<option value="manager">Manager</option>
								<option value="hr">HR</option>
							</select>
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary btn-block btn-lg"
								type="submit" onclick="return loginValidation()" value="login">
						</div>
					</form>

				</div>
				<div class="modal-footer">
					<a href="ForgetPassword.jsp">forgot password</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
			</div>
		</div>
	</div>
	</div>
    
</body>
</html>                            