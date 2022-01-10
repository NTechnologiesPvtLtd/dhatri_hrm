<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.hrm.bean.EmployeeBean"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@page import="java.util.List"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>
<%@page import="com.hrm.bean.*"%>
 <%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@page import="com.hrm.dao.HRMDaoImplementation"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function callPopUpMethod(gender,dob){
	var w = window.open('', '', 'width=400,height=400,resizeable,scrollbars');
    w.document.write("Gender: "+gender +"\n"+"DOB:" +dob);
    w.document.close(); // needed for chrome and safari
}
</script>

<meta name="viewport" content="width=device-width, initial-scale=1">
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<title>employeeView</title>

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

<%SharedObject.setSession(request.getSession()); %>

<div class="container-fluid">
	<nav class="navbar navbar-expand-sm bg-dark fixed-top navbar-dark">
	
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp"><strong>Dhatsol It Solutions</strong></a>
		</div>
  		<ul class="navbar-nav ml-auto">
    		<li class="nav-item active"><a class="nav-link"  href="index.jsp"><strong>Home</strong></a></li>
    		<li class="nav-item active"><a class="nav-link" href="Aboutus.jsp"><strong>About us</strong></a></li>
  			<li class="nav-item active"><a class="nav-link" href="user.jsp"><strong>Logout</strong></a></li>
  			<li class="nav-item active"><p class="nav-link" align="right"><b>Login As:</b> <%=userId%></p></li>	
  		</ul>
  	
	</nav>
</div>
<br>
<br>
<br>
<br>
<br>
<br>

<div class="container">
	<center>
  		<a href="userupdate" class="btn btn-info" role="button">UpdateProfile</a>
 		<a href="Payslip.jsp" class="btn btn-info" role="button">DownloadPayslip</a>
  		<a href="CreateRequest.jsp" class="btn btn-info" role="button">CreateRequest</a>
  		<a href="ViewRequest.jsp" class="btn btn-info" role="button">ViewRequest</a>
  		
  		
  		</center>
  		
</div>
 
</body>
</html>