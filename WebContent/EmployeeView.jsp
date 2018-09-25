<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.hrm.bean.EmployeeBean"%>
<%@page import="java.util.List"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" media="all" href="stylesheets/animate.css"/>
<script type="text/javascript" src="employeeValidation.js">
   









</script>
	
</head>
<body>
	<div id="nav">
		<h1>
			<a href="index.jsp">Dhatsol IT Solutions</a>
		</h1>

		
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="user.jsp">Login</a></li>
		


			<div class="dropdown">
				<button class="dropbtn">
					Employee <i class="fa fa-caret-down" id="active"></i>
				</button>
				<div class="dropdown-content">
					<a href="EmployeeRegistration.jsp">New Registration</a> <a href="#">Response
						Approved</a>
						<a href="EmployeeViewDirection.jsp">Search Employee</a>
						<a href="user.jsp">Login</a>

				</div>
			</div>

			<li><a href="Aboutus.html">about us</a></li>
		</ul>
	</div>

	</div>	
	<div id="#mainform">
		<br> <br>

		<div class="container" style="background-color:#ddd";>
			<center>
				<h1 style=" padding:50% margin-top:50% height:20%";>
					
				</h1>
				<hr>
				<form >
				<div class="panel panel-default">
				
				<%
		HRMService service = new HRMServicesImplementation();
		List<EmployeeBean> employeeResponse = service.search();
		if (employeeResponse != null && !employeeResponse.isEmpty()) {
	%>
	 <div class="table">

	<table align=center>	
  
         
       
         
		<tr>
		
		<td id="header" colspan="7"><h1>Display Information Of Employees </h1></td></tr>
		<tr>
			<th>EmployeeId</th>
			<th>First Name</th>
			<th>Father Name</th>
			<th>Gender</th>
			<th>Email Id</th>
			<th>Mobile No</th>
			<th>Aadhar No</th>
			
		
		</tr>
</div>
		<%
			for (EmployeeBean employeeBean : employeeResponse) {
		%>
		<tr>
			<td><%=employeeBean.getEmployeeId()%></td>
			<td><%=employeeBean.getFirstName()%></td>
			<td><%=employeeBean.getFatherName()%></td>
			<td><%=employeeBean.getGender()%></td>
			<td><%=employeeBean.getEmailId()%></td>
			<td><%=employeeBean.getMobileNumber()%></td>
			<td><%=employeeBean.getAadharNo()%></td>
		</tr>
		<%
			}
		%>



	</table>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	

	<%
		} else {
			out.print("No Result Found");
		}
	%>						
					
				</div>
				</form>
				
</body>
</html>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


