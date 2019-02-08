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
<<<<<<< HEAD
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
		</ul>
	</div>

	<%
		SharedObject.setSession(request.getSession());
	%>
	<h1>LoginView</h1>
	<form action="LogOutServlet" method="post">
		<input type="submit" value="LogOut">
	</form>

	<div></div>
	<br>
	<br>
=======
<% SharedObject.setRequest(request); %>
<%SharedObject.setSession(session); %>

<h1>LoginView</h1>
<form action="LogOutServlet" method="post">
<input type="submit" value="LogOut">
</form>
<%
Object obj=SharedObject.getFromSession(EmployeeConstants.EMPLOYEE_ID);
String userId="";
if(null != obj){
	userId=(String)obj;
}
%>
<div>
<div>Login As: <%=userId %>  </div>
</div>
<br>
<br>
<table border="5" bordercolor="red">
    <tr>
        <th>
            <a href="UpdateProfile.jsp">Update Profile</a>
            </th>
          <th>
                <a href="Payslip.jsp">Pay Slip</a>
         </th>
     <th>
     <a href="CreateRequest.jsp">CreateRequest</a>
     </th>
     </tr>
     </table>
>>>>>>> ee881ea478eaa9ba1e1605b6e1f2be7133a40126

</body>
</html>
