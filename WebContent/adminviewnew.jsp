<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dhatsol</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>

 <style>
            th{
            background-color: white;
            
            }
        </style>

</head>
 <body 	 class="container" style="background-image: url(adminmage.jpg)";>
 <%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

		Object obj = SharedObject.getFromSession(EmployeeConstants.ADMINID);
		String adminid = "";
		if (null != obj) {
			adminid = (String) obj;
		}
	%>

	<nav class="navbar navbar-expand-sm bg-light justify">
	<table>
	<tr>
	<h1>
		<ul href="index.jsp" style="color: white"> Dhatsol It Solutions</ul>
	</h1>
	<th style="font-size: 20px"  >Login As:
			<%=adminid%></th>
	
	</tr>
	



	

	<%-- <div align="center">
		<h4>
			Login As:
			<%=userId%>
		</h4>
	</div> --%>

	<div align="right">

		<form action="AdminLogOutServlet" method="get">
			<input type="submit" class="btn btn-danger" value="LogOut">
		</form>
	</div>
	</table>
	</nav>

		<div id="#mainform">

				<div class="center">
			
			
				</center>

				<%
					SharedObject.setRequest(request);
				%>
				<%
					SharedObject.setSession(session);
				%>
					<center>
				<h1 style="color: white">AdminView..</h1>


				<div></div>
				<br> <br>
				<table>
					<tr>
						
							<td><a href="UpdateProfile.jsp"
								class="btn btn-danger" style="margin-right: 16px">Update Profile</a></td>
						
						<td><a href="Payslip.jsp" class="btn btn-danger" style="margin-right: 16px">Pay
								Slip</a></td>
						<td><a href="CreateRequest.jsp" class="btn btn-danger">CreateRequest</a></td>
					</tr>
				</table>

				</center>
			</div>
		</div>
	</div>
</body>
</html>
