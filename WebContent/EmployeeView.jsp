<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.hrm.bean.EmployeeBean"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@page import="java.util.List"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>
<%@page import="com.hrm.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>employee</title>
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
<script type="text/javascript">
var request;  
function sendInfo()  
{  
var value= document.getElementById("searchEle").value;  
var url="SingleEmployeeView.jsp?val="+value;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('result').innerHTML=val;  
}  
} 
</script>
</head>
<body>
<%SharedObject.setSession(request.getSession()); %>
	<div id="nav">
		<h1>
			<a href="index.jsp">Dhatsol IT Solutions</a>
		</h1>


		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="Login.jsp">LogOut</a></li>



			<div class="dropdown">
				<button class="dropbtn">
					Employee <em class="fa fa-caret-down" id="active"></em>
				</button>
				<div class="dropdown-content">
					<a href="EmployeeRegistration.jsp">New Registration</a> <a href="#">Response
						Approved</a> <a href="EmployeeViewDirection.jsp">Search Employee</a> <a
						href="Login.jsp">Login</a>

				</div>
			</div>

			<li><a href="Aboutus3.jsp">about us</a></li>
		</ul>
	</div>

	</div>
	
	<div id="#mainform">
		<br> <br>

		<div class="container" style="background-color:#ddd";>
			<center>
				<h1 style="color:black";"padding:50%"; "margin-top:50%"; "height:20%";>
					
				</h1>
				<hr>
				
				
		

   <a href="EmployeeView.jsp">Display All Employees Data</a> 
    <br><br><br><br>
	<form action="SingleEmployeeView.jsp" >


Filter:<input type="text" name="searchElement" id="searchEle" onkeyup="return sendInfo()"  placeholder="EmployeeId/Salary/EmailId" >



<div id="result">

</div>



			
				</div>
				</form>
				</center>
				</div>
	
	
	
	<div id="#mainform">


		<div class="container" style="background-color: #ddd";>
			<center>
				<h1 style="padding: 50% margin-top:50% height:20%";></h1>
				<hr>

				<form >
				<div class="panel panel-default">
				
				<%
		HRMService service = new HRMServicesImplementation();
		List<EmployeeBean> employeeResponse = service.search();
		if (employeeResponse != null && !employeeResponse.isEmpty()) {
	%>
	
	 <div class="table" style="overflow-x:auto;">
<div style="overflow-y:auto;">
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
			
		</tr>
		<%
			}
		%><!-- 


 -->
	</table>
	</div>
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
































