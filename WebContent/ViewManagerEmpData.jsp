<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.hrm.bean.EmployeeBean"%>
<%@page import="java.util.List"%>
<%@page import="com.hrm.session.*"%>
<%@page import="com.hrm.constants.*"%>
<%@page import="com.hrm.services.*"%>
<%@page import="com.hrm.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Data</title>
</head>
<link href="font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" media="all" href="stylesheets/animate.css"/>
<script type="text/javascript" src="employeeValidation.js"></script>
<body>
<div class="table" style="overflow-x:auto;">
<div style="overflow-x:auto;">
<table align=center>	
  <tr>
		
		<td id="header" colspan="24"><h1>Display Information Of Employees </h1></td></tr>
		<tr>
			<th>EmployeeId</th>
			<th>First Name</th>
			<th>Father Name</th>
			<th>Gender</th>
			<th>Email Id</th>
			<th>Mobile No</th>
			<th>Aadhar No</th>
			<th>Permanent Address</th>
			<th>Local Address</th>
			<th>Board Of Secondary Education</th>
			<th>TenthPassedout</th>
			<th>Board Of Intermediate Education</th>
			<th>IntermediatePassedout</th>
			<th>Graduation Details</th>
			<th>Passedout</th>
			<th>Branch</th>
			<th>University</th>
			<th>Company Name</th>
			<th>Role</th>
			<th>Notice Period</th>
			<th>Location</th>
			<th>Experience</th>
			<th>Current CTC</th>
			<th>Excepted CTC</th>  
			<th>Manager</th>
			
			
		
		</tr>
</div>
		<%
		List<EmployeeBean> list=(List<EmployeeBean>)session.getAttribute("managerEmp");
			for (EmployeeBean employeeBean : list) {
		%>
		<tr>
			<td><%=employeeBean.getEmployeeId()%></td>
			<td><%=employeeBean.getFirstName()%></td>
			<td><%=employeeBean.getFatherName()%></td>
			<td><%=employeeBean.getGender()%></td>
			<td><%=employeeBean.getEmailId()%></td>
			<td><%=employeeBean.getMobileNumber()%></td>
			<td><%=employeeBean.getAadharNo()%></td>
			 <td><%=employeeBean.getPermanentAddress()%></td>
			<td><%=employeeBean.getLocalAddress()%></td>
			<td><%=employeeBean.getSchoolName()%></td>
			<td><%=employeeBean.getTenthPassedOut()%></td>
			<td><%=employeeBean. getIntermediateCollegeName()%></td>
			<td><%=employeeBean.getInterPassedOut()%></td>
			<td><%=employeeBean.getGraduationDetails() %></td>
			<td><%=employeeBean.getGraduationPassedOut()%></td>
			<td><%=employeeBean.getBranch()%></td>
			<td><%=employeeBean.getUniversity()%></td>
			<td><%=employeeBean.getCompanyName()%></td>
			<td><%=employeeBean.getRole() %></td>
			<td><%=employeeBean.getNoticePeriod()%></td>
			<td><%=employeeBean. getLocation()%></td>
			<td><%=employeeBean.getExperience()%></td>
			<td><%=employeeBean.getCurrentCTC()%></td>
			<td><%=employeeBean.getExpectedCTC()%></td> 
			<td><%=employeeBean.getManager() %></td>
			
		</tr>
		<%
			}
		%>



	</table>
	</div>
	</div>
</body>
</html>