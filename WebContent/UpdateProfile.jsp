<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.hrm.bean.EmployeeBean"%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display title here</title>
<link href="font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" media="all" href="stylesheets/animate.css" />
<script type="text/javascript" src="employeeValidation.js">
	
</script>
<style>
</style>

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
						Approved</a> <a href="EmployeeViewDirection.jsp">Search Employee</a> <a
						href="user.jsp">Login</a>

				</div>
			</div>

			<li><a href="Aboutus.html">about us</a></li>
		</ul>
	</div>

	</div>
	<div id="#mainform">
		<br> <br>

		<div class="container" style="background-color: #ddd";>
			<center>
				<h1 style="color: black";"padding:50%"; "margin-top:50%"; "height:20%";>

				</h1>
				<hr>
				<div class="panel panel-default">

					<h1 style="color: #33847c;">Employee Details</h1>
					//<%!int count = 0;%>
					<% 
					String resp=request.getParameter("employeeId");
					SharedObject.setRequest(request); %>

<%
Object obj=SharedObject.getFromSession(EmployeeConstants.EMPLOYEE_ID);


							HRMService service = new HRMServicesImplementation();
							List<EmployeeBean> list=service.search();
							Iterator<EmployeeBean> itr=list.iterator();
							while(itr.hasNext()){       
						
						EmployeeBean bean=itr.next();
						String s1=bean.getEmployeeId();
						String s2=bean.getFirstName();
							
							if (s1.equals(resp) || s2.equalsIgnoreCase(resp)) {
							count=1;
					%>

					<div class="table">
						<form action="UpdateServlet" method="post">
							<table align="center">
								</div>
								<tr>
									<td>Employee Id:</td>
									<td><input type="text" id="employeeId" name="employeeId" value="<%=bean.getEmployeeId()%>" /></td>
								</tr>
								<tr>
									<td>Employee Name:</td>
									<td><input type="text" id="firstName" name="firstName" value="<%=bean.getFirstName()%>" /></td>
								</tr>
								<tr>
									<td>Father Name:</td>
									<td><input type="text" id="fatherName" name="fatherName" value="<%=bean.getFatherName()%>" /></td>
								</tr>
								<tr>
									<td>Gender:</td>
									<td><input type="text" value="<%=bean.getGender()%>" /></td>
								</tr>
								<tr>
									<td>Email Id:</td>
									<td><input type="text" value="<%=bean.getEmailId()%>" /></td>
								</tr>
								<tr>
									<td>Mobile No:</td>
									<td><input type="text"
										value="	<%=bean.getMobileNumber()%>" /></td>
								</tr>
								<tr>
									<td>Aadhar No:</td>
									<td><input type="text" value="<%=bean.getAadharNo()%> " /></td>
								</tr>
								<tr>
									<td>Permanent Address:</td>
									<td><input type="text"
										value="<%=bean.getPermanentAddress()%>" /></td>
								</tr>
								<tr>
									<td>Local Address:</td>
									<td><input type="text" value="<%=bean.getLocalAddress()%>" /></td>
								</tr>

								<tr>
									<td>Board Of Secondary Education:</td>
									<td><input type="text" value="<%=bean.getSchoolName()%>" /></td>
								</tr>
								<tr>
									<td>TenthPassedOut:</td>
									<td><input type="text"
										value="<%=bean.getTenthPassedOut()%>" /></td>
								</tr>
								<tr>
									<td>Board Of Intermediate Education:</td>
									<td><input type="text"
										value="<%=bean.getIntermediateCollegeName()%>" /></td>
								</tr>
								<tr>
									<td>InterPassedOut:</td>
									<td><input type="text"
										value="<%=bean.getInterPassedOut()%> " /></td>
								</tr>

								<tr>
									<td>Graduation Details:</td>
									<td><input type="text"
										value="<%=bean.getGraduationDetails()%>" /></td>
								</tr>
								<tr>
									<td>GraduationPassedOut:</td>
									<td><input type="text"
										value="<%=bean.getGraduationPassedOut()%>" /></td>
								</tr>
								<tr>
									<td>Branch:</td>
									<td><input type="text" value="<%=bean.getBranch()%>" /></td>
								</tr>
								<tr>
									<td>University:</td>
									<td><input type="text" value="<%=bean.getUniversity()%>" /></td>
								</tr>
								<tr>
									<td>CompanyName:</td>
									<td><input type="text"
										value="	<%=bean. getCompanyName()%>" /></td>
								</tr>
								<tr>
									<td>Role:</td>
									<td><input type="text" value="<%=bean.getRole()%>" /></td>
								</tr>
								<tr>
									<td>NoticePeriod:</td>
									<td><input type="text" value="<%=bean.getNoticePeriod()%>" /></td>
								</tr>
								<tr>
									<td>Location:</td>
									<td><input type="text" value="<%=bean.getLocation()%>" /></td>
								</tr>
								<tr>
									<td>Experience:</td>
									<td><input type="text" value="<%=bean.getExperience()%>" /></td>
								</tr>
								<tr>
									<td>CurrentCTC:</td>
									<td><input type="text" value="<%=bean.getCurrentCTC()%>" /></td>
								</tr>
								<tr>
									<td>ExpectedCTC:</td>
									<td><input type="text" value="<%=bean.getExpectedCTC()%>" /></td>
								</tr>

							</table>
							<br></br> <br></br> <input type=submit
								onclick="window.location='http://localhost:8080/DhatriHRM_Web/EmployeeViewDirection.jsp';"
								value="Back" class="button">
								<input type="submit" value="Update" class="button">

					</form>
						<hr>
						<% }
		
		} %>
						<%
		if(count==0){
			%>
						<h1 style="color: red;">Please Enter valid EmployeeId or
							Employee Name</h1>

						<%			
		}else{count=0;}
		%>


					</div>
			</center>
		</div>
		</div>
		
</body>
</html>