<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">



<title>AdminLogin</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
  
  function validation() {
		var AdminId = document.getElementById("AdminId").value;
		var Password = document.getElementById("Password").value;
		if (AdminId == null || AdminId == "") {
			alert("Please enter Admin Id");
			//document.getElementById("adminid").innerHTML = "Please enter Admin Id";
			return false;

		}

		if (Password == null || Password == "") {
			alert("Please enter Password");
			//document.getElementById("password").innerHTML = "Please enter Password";
			return false;
		}
	}
	function doClearMyMsg(){
		document.getElementById("adminid").innerHTML = "";
		document.getElementById("password").innerHTML = "";

	}
  </script>

</head>
<body style="background-color: Thistle;">

	<!-- <div class="container"> -->
	<h1 align="center">AdminLogin</h1>


	<div class="alignment">
		<div class="partition" align="center">
			<div align="center">
				<img src="Admin.jpg" class="img-circle" width="200px" height="200px">
			</div>
		</div>
		<br> <br>

		<form class="form-horizontal" action="AdminLogIn" method="post">
			<div class="form-group">
				<label class="control-label col-sm-5" for="AdminId">AdminId<span
					class="red">*</span>:
				</label>
				<div class="col-sm-2">
					<input type="text" name="AdminId" class="form-control" id="AdminId"
						onkeypress="doClearMyMsg()">
						 <span id="adminid" role="alert"></span>
				</div>
			</div>

			<br>
			<div class="form-group">
				<label class="control-label col-sm-5" for="Password">Password<span
					class="red">*</span>:
				</label>
				<div class="col-sm-2">
					<input type="password" class="form-control" name="Password"
						id="Password" onkeypress="doClearMyMsg()" role="alert"> <span
						id="password" ></span> <br>
					<div class="col-sm-7">


						<div class="container">
							<input type="submit" class="btn btn-info" value="Login"
								onclick="return validation()"> <input type="reset"
								class="btn btn-info" value="reset">
						</div>

					</div>
				</div>
			</div>



		</form>
	</div>
</body>
</html>