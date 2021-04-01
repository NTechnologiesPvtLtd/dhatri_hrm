<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="com.hrm.constants.EmployeeConstants"%>
    <%@page import="com.hrm.session.SharedObject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" media="all" href="stylesheets/mybootstrap.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" media="all" href="stylesheets/mybootstrap.css" />
<script type="text/javascript">

  function adminValidation()
  {
  	var username=document.getElementById("adminid").value;
  	var password=document.getElementById("adminpassword").value;
  	if(username==null||username=="")
	{
	document.getElementById("errorMsg").innerHTML="please enter username";
	return false;
	}

else if(password==null||password=="")
	{
	document.getElementById("errorMsg1").innerHTML="please enter password";
	return false;
	}
else
	return true;
}
  
  function clearForm()
	{
		document.getElementById("errorMsg").innerHTML="";
		document.getElementById("errorMsg1").innerHTML=""; 
	}

  
 


  </script>
</head>
<body style="background-color: #6495ED;">

	<form action="AdminLogIn" method="get">
	
	
		<div class="alignment">
			<table class="partition" align="center">
	   <div> align="center"</div>
					<img src="admin.png">
				</div>
				<br>
				<p>
				 class="design" align="center" style="color: white">ADMIN
				 </p>
				
				
				<tr>
					<td>AdminId:<font color="red">*</font><br>
					<br></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
						placeholder="enter the adminid" name="adminid" id="adminid"
						oninput="clearForm()"><br>
					<br></td>
					<td id="errorMsg" style="color: red;"></td>
				</tr>

				<tr>
					<td>Password:<font color="red">*</font><br>
					<br></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
						placeholder="enter the password" name="adminpassword" id="adminpassword"
						oninput="clearForm()"><br>
					<br></td>
					<td id="errorMsg1" style="color: red;"></td>
				</tr>
			</table>
			<%SharedObject.setSession(request.getSession()); %>
				<div id="errorMsg" align="center" style="color: red">
			<%String errorMgs="";
			
			Object obj= SharedObject.getFromSession(EmployeeConstants.ERROR_MSG_UI); 
			if(null !=obj){
				errorMgs=(String)obj;
				out.print(errorMgs);
			}
			%>
			</div>
			<center>

				
				<button onclick="return adminValidation()" class="btn btn-success">LogIn</button>
				<button onclick="clearForm()" type="reset" value="Reset" class="btn btn-success">Reset</button>

			</center>

		</div>
	</form>
</body>
</html>