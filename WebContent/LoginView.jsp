<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% SharedObject.setRequest(request); %>
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

</body>
</html>