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
<link rel="stylesheet" media="all" href="stylesheets/animate.css"/>
<script type="text/javascript" src="employeeValidation.js">

</script>
<style>

</style>
	
</head>
<body>


	
	
	<div id="#mainform">
		<br> <br>

		<div class="container" style="background-color:#ddd";>
			<center>  
				<h1 style="color:black";"padding:50%"; "margin-top:50%"; "height:20%";>
					
				</h1>				<hr>
				<div class="panel panel-default">
   	
<h1 style="color:#33847c;">Employee Details</h1>
<%! int count=0; %>
<%
String param=request.getParameter("val").trim();
/*Java String trim() The java string trim() method eliminates leading and trailing spaces.
The unicode value of space character is '\u0020'. The trim() method in java string checks 
this unicode value before and after the string, if it exists then removes the spaces and returns 
the omitted string.*/


		HRMService service = new HRMServicesImplementation();
		//service.search(empid);
		//EmployeeBean bean=new EmployeeBean();
		 EmployeeBean bean=service.search(param);
		/* Iterator<EmployeeBean> itr=list.iterator();
		while(itr.hasNext()){  */      
			
			//EmployeeBean bean=itr.next();
			/* String s1=bean.getEmployeeId();
			String s2=bean.getFirstName();
		
		if (s1.equals(resp) || s2.equalsIgnoreCase(resp)) {
		count=1;	 */
			
	%>
	

	
	 <div class="table" style="overflow-x:auto;">
<div style="overflow-x:auto;">
	<table align=center>	
  
		<tr>
			<th>Employee Id/Name/Salary</th>
			<th>Employee Name</th>
			<th>Father Name</th>
			<th>Gender</th>
			<th>Email Id</th>
			<th>Mobile No</th>
			<th>Aadhar No</th>
			<th>Permanent Address</th>
			<th>Local Address</th>
			<th>Board Of Secondary Education</th>
			<th>TenthPassedOut</th>
			<th>Board Of Intermediate Education</th>
			<th>InterPassedOut</th>
			<th>Graduation Details</th>
			<th>GraduationPassedOut</th>
			<th>Branch</th>
			<th>University</th>
			<th>CompanyName</th>
			<th>Role</th>
			<th>NoticePeriod</th>
			<th>Location</th>
			<th>Experience</th>
			<th>CurrentCTC</th>
			<th>ExpectedCTC</th>
			<th>Manager</th>  
			
			
		
		</tr>
</div>
		
		<tr>
			<td><%=param%></td>
	<td><%=bean.getFirstName()%></td>
	<td><%=bean.getFatherName()%></td>
	<td><%=bean.getGender()%></td>
	<td><%=bean.getEmailId()%></td>
	<td>	<%=bean.getMobileNumber()%></td>
	<td><%=bean.getAadharNo()%> </td>
	<td><%=bean.getPermanentAddress()%></td>
	<td><%=bean.getLocalAddress()%></td>
	
<td><%=bean.getSchoolName()%></td>
	<td><%=bean.getTenthPassedOut()%></td>
	<td><%=bean.getIntermediateCollegeName()%></td>
	<td><%=bean.getInterPassedOut()%> </td>
	
	<td><%=bean.getGraduationDetails()%></td>
	<td><%=bean.getGraduationPassedOut()%></td>
	<td><%=bean.getBranch()%></td>
	<td><%=bean.getUniversity()%></td>
	<td><%=bean. getCompanyName()%></td>
	<td><%=bean.getRole()%> </td>
	<td><%=bean.getNoticePeriod()%></td>
	<td><%=bean.getLocation()%></td>
	<td><%=bean.getExperience()%></td>
	<td><%=bean.getCurrentCTC()%></td>
	<td><%=bean.getExpectedCTC()%></td>
	<td><%=bean.getManager()%></td>
	
			
		</tr>
		
	</table>
	</div>
	
	
	
	
	
	<br></br>
	<br></br>
		<input type=submit onclick="window.location='http://localhost:8079/DhatriHRM_Web/EmployeeViewDirection.jsp';"
								value="Back" class="button">
	<hr>
<%-- <% }
		
		 %> --%>
		<%-- <%
		if(count==0){
			%>
			<h1 style="color:red;">Please Enter valid EmployeeId or Employee Name</h1>
			
			<%			
		}else{count=0;}
		%>  --%>

				
				</div>
				
	 		</center>   
				</div>
				
</body>
</html>