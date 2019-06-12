<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Loginview</title>
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
	<%
		Object obj = SharedObject
				.getFromSession(EmployeeConstants.EMPLOYEE_ID);
		String userId = "";
		if (null != obj) {
			userId = (String) obj;
		}
	%>
	<div id="nav">
		<h1>
			<a href="index.jsp">Dhatsol IT Solutions</a>
		</h1>

		<nav>
		<ul>
			<li><a href="userupdate.jsp">Update Profile</a></li>
			<li><a href="Payslip.jsp">Pay Slip</a></li>
			<li><a href="CreateRequest.jsp">CreateRequest</a></li>
			<li><p align="right">
					<b>Login As:</b>
					<%=userId%></p></li>
					<form action="LogOutServlet" method="post" align="right">
		<input type="submit" value="LogOut">
	</form>
		</ul>
		
	</div>

	<%
		SharedObject.setSession(request.getSession());
	%>
	

	<div></div>
	<br>
	<br>

</body>
</html>
