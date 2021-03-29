<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.hrm.controller.CreateRequestServlet"%>
<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@page import="com.hrm.dao.HRMDaoImplementation"%>
<%@page import="com.hrm.bean.EmployeeBean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<body >
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
    		<a class="dropdown-item " href="#"><h3>Search Employee</h3></a>
 		 </div>
		</div>
		<a href="#" class="col-md-2 btn btn-primary " ><h3>Home</h3></a>
		<a href="#" class="col-md-2 btn btn-primary " ><h3>Update profile</h3></a>
		<a href="#" class="col-md-2 btn btn-primary " ><h3>Pay Slip</h3></a>
		<a href="CreateRequest.jsp" class="col-md-2 btn btn-primary " ><h3>Create request</h3></a>
		<a href="#" class="col-md-2 btn btn-primary " ><h3>Logout</h3></a>
	</div>
	
	
	</div>
	<div>
	</div>
	
	<form action="/CreateRequest" method="post">
	<div  align="center"  class="container "  style= " background:rgba(); margin-top:150px; width:30%; padding:30px;">
		<table style="color:white;">
			<tr>
				<td>  <label>Email to</label>  </td>
				<td>	:-				</td>
				<td>  <select class="form-control" id="emailTo" name="emailTo"
						onchange="getManagerList(this.value)">
						<option class="">Select manager</option>
						<option value="Project Manager">ProjectManager</option>
						<option value="HR Manager">HrManager</option>
						<option value="Admin">Admin</option>
					</select>  </td>
			</tr>
			
			
			<tr>
			<td>  <label>Manager</label>  </td>
			<td>:-</td>
			<td>  <select class="form-control" id="managerOptions" name="managerOptions"
					onchange="getManagerList(this.value)">
					<option>Select manager</option>
					<option value="Manager1">Manager1</option>
					<option value="Manager2">Manager2</option>
					<option value="Manager3">Manager3</option>
					<option value="Manager3">Manager3</option>
					<option value="Admin">Admin</option>
					</select> </td>
			</tr>
			
			
			<tr>
			<td>    <label>Reason ID</label>  </td>
			<td>		:-			</td>
			<td>   <input class="form-control" type="text" id="reasonId" name="reasonId"> </td>
			</tr>
			
			<tr>
			<td>   
			
			<tr>
			<td>    <label>Reason</label>  </td>
			<td>		:-			</td>
			<td>	<textarea color=black; type="text" name="reason" id="reason" onkeydown="reason(this.value)"></textarea>
			</td>
	
		</table>
		<br><br>
		<button type="submit">Submit</button>
		</div>
		
		</form>

</body>
</html>