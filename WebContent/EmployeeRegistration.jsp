<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@page import="com.hrm.bean.EmployeeBean"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@page import="com.hrm.services.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dhatsol</title>

<link href="font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" media="all" href="stylesheets/animate.css"/>
<script type="text/javascript" >  
function showcommentform()
{  
var data="EmployeeId:<input type='text' name='employeeId'>";  
 
document.getElementById('location').innerHTML=data;  
} 


function showcommentform1()
{  
	document.getElementById('location').innerHTML=""; 
} 
  
</script>  
<style type="text/css">
textarea.wt-resize{
resize: none;
}</style>
	
</head>
<body>

	<div id="nav">
		<h1>
			<a href="index.jsp">Dhatsol IT Solutions</a>
		</h1>

		<nav>
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="Login.jsp">Login</a></li>
		


			<div class="dropdown">
				<button class="dropbtn">
					Employee <em class="fa fa-caret-down" id="active"></em>
				</button>
				<div class="dropdown-content">
					<a href="EmployeeRegistration.jsp">New Registration</a> <a href="#">Response
						Approved</a>
						<a href="EmployeeViewDirection.jsp">Search Employee</a>
						<a href="Login.jsp">Login</a>
						

				</div>
			</div>

			<li><a href="Aboutus.jsp">about us</a></li>
		</ul>
	</div>

	</div>	
	<div id="#mainform">
		

		<div class="container" style="background-image:url(blue.jpg)";>
			<center>
				<h1 style="color:red padding:50% margin-top:50% height:20%";>
					
				</h1>
				<hr>
				<br>
				<br>
				
    <label for="employee">Employee: </label>  
              <input type="radio" id="employee" name="employee" value="NewEmployee" onclick="showcommentform1()"/>NewEmployee  
              <input type="radio" id="employee" name="employee" value="ExistingEmployee" onclick="showcommentform()"/>ExistingEmployee<br/>  
<br>
<br>
 
					 	
						<p2 id="errorMsg3" style=color:red;></p2><br><br>
		
				
				<form action="RegistrationServlet" method="post">
				<div class="panel panel-default">
					<h2>Personal Information</h2>
					<br> <br>
					
					<table><tr>
					<div id="location"></div> 
					</tr>
					
						<tr>
							<td>First Name:<font color="red">*</font></td>
							<td><input type=text onkeypress="clearForm()" id="firstName"
								name="firstName"><br> <br></td>
								<td><p id="errorMsg" style=color:red;></p></td> 

						</tr>
						<tr>
						<td>Last Name:<font color="red">*</font></td>
							<td><input type="text" onkeypress="clearForm()" id="lastName"
								name="lastName"><br> <br></td>
								<td><p id="errorMsg1" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Father Name:<font color="red">*</font></td>
							<td><input type="text" onkeypress="clearForm()" id="fatherName" name="fatherName"><br> <br></td>
							<td><p id="errorMsg2" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Gender:<font color="red">*</font></td>
							<td><input type="radio" name="gender" value="Male" 
								onkeypress="clearForm()" 
								id="gender">Male <input
				
								type="radio" name="gender" value="Female">Female <input
								type="radio" name="gender" value="Others">Others</td>

								
							<td><p2 id="errorMsg3" style=color:red;></p2><br> <br></td>
						</tr>
						<tr>
							<td>Date Of Birth:<font color="red">*</font></td>
							<td><input type="date" name="dob" onkeypress="clearForm()" id="dob"><br> <br></td>
							<td><p id="errorMsg4" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Email Id:<font color="red">*</font></td>
							<td><input type=text onkeypress="clearForm()" id="emailId"
								name="emailId"><br> <br></td>
								<td><p id="errorMsg5" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Mobile No:<font color="red">*</font></td>
							<td><input type=text onkeypress="clearForm()" id="mobileNumber"
								name="mobileNumber" text-align:right; pattern="[0-9]{10}" title="Mobile number must be 10 digits" placeholder="Mobile number" required><br> <br></td>
								<td><p id="errorMsg6" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Aadhar Number:<font color="red">*</font></td>
							<td><input type=text name="aadharNo"onkeypress="clearForm()" id="aadharNo" pattern="[0-9]{12}" title="Aadhar Card Number must be 12 digits" placeholder="Enter AadharCardNumber" required ><br> <br></td>
							<td><p id="errorMsg7" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Permanent Address:<font color="red">*</font></td>
							<td><textarea cols="30" rows="5" class="wt-resize" onkeypress="clearForm()" id="permanentAddress" name="permanentAddress">
</textarea><br> <br></td>
<td><p id="errorMsg8" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Local Address:<font color="red">*</font></td>
							<td><textarea cols="30" rows="5" class="wt-resize" onkeypress="clearForm()" id="localAddress" name="localAddress">
</textarea></td>
							<br>
							<br>
							<td><p id="errorMsg9" style=color:red;></p></td> 
							
						</tr>
					</table>
					<br> <br>
					<h2>Educational Information</h2>
					<br> <br>
					<table>
						<tr>
							<td>Board Of Secondary Education:<font color="red">*</font></td>
							<td><input type=text name="schoolName" onkeypress="clearForm()" id="schoolName"><br> <br></td>
							<td><p id="errorMsg10" style=color:red;></p></td> 
							
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Passedout:<font color="red">*</font></td>
							
							<td><input type=text name="tenthPassedOut" onkeypress="clearForm()" id="tenthPassedOut"></td>
							<td><p id="errorMsg11" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Board Of Intermediate Education:<font color="red">*</font></td>
							<td><input type=text name="intermediateCollegeName"onkeypress="clearForm()" id="intermediateCollegeName"> </select><br>
								<br></td>
								<td><p id="errorMsg12" style=color:red;></p></td> 
								
							<td>&nbsp;&nbsp;&nbsp;&nbsp;Passedout:<font color="red">*</font></td>
							<td><input type=text name="interPassedOut" onkeypress="clearForm()" id="interPassedOut"></td>
							<td><p id="errorMsg13" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Graduation Details:<font color="red">*</font></td>
							<td><select name="graduationDetails" onkeypress="clearForm()" id="graduationDetails">
									<option value="None">Select Branch</option>
									<option value="B.Tech">B.TECH</option>
									<option value="M.Tech">M.TECH</option>
									<option value="MBA">MBA</option>
									<option value="PG">PG</option>
									
							</select><br> <br></td>
							<td><p id="errorMsg14" style=color:red;></p></td> 
							
							<td>&nbsp;&nbsp;&nbsp;&nbsp;Passedout:<font color="red">*</font></td>
							<td><input type=text name="graduationPassedOut" onkeypress="clearForm()" id="graduationPassedOut"></td>
							<td><p id="errorMsg15" style=color:red;></p></td> 
							
						</tr>
						<tr>
								<td>Branch:<font color="red">*</font></td>
							<td><select name="branch" onkeypress="clearForm()" id="branch">
									<option value="None">Enter Your Branch</option>
									<option value="ECE">ECE</option>
									<option value="EEE">EEE</option>
									<option value="CSE">CSE</option>
									<option value="Civil">CIVIL</option>
									<option value="Mechanical">MECHANICAL</option>
									<option value="Bcom">Bcom</option>
							</select></td>
							<td><p id="errorMsg16" style=color:red;></p></td> 
							
							
							<td>&nbsp;&nbsp;&nbsp;&nbsp;University:<font color="red">*</font></td>
							<td><input type=text name="university" onkeypress="clearForm()" id="university"></td>
							<td><p id="errorMsg17" style=color:red;></p></td> 
							
						</tr>
					</table>
					<table>
						<br>
						<br>
						<h3>Job Experience Information:</h3>
						<br>
						<br>
						<tr>
							<td>Company Name:</td>
							<td><input type=text name="companyName" onkeypress="clearForm()"
								id="companyName"><br> <br></td>
							<td><p id="errorMsg18" style=color:red;></p></td> 
						</tr>
						<tr>
							<td>Role:</td>
							<td><select name="roleDetails" onkeypress="clearForm()" id="roleDetails">
									<option value="None">Select role</option>
									<option value="associative engineer">Associative Engineer</option>
									<option value="software engineer">Software Engineer</option>
									<option value="senior software engineer">Senior Software Engineer</option>
									<option value="lead analyst">Lead Analyst</option>
									<option value="Project Manager">Project Manager</option>
									<option value="HR Manager">HR Manager</option>
									<option value="Admin">Admin</option>
									
							</select></td>
								<td><p id="errorMsg19" style=color:red;></p></td> 
					
						</tr>
						<tr>
						<%EmployeeBean employeeBean=new EmployeeBean(); 
						HRMService service = new HRMServicesImplementation();
						String str1=request.getParameter("roleDetails");
						List<EmployeeBean> managerslist= service.searchManager(str1);%>
						<td>Manager:</td>
					<td>
						<select name="empmanager" id="empmanager">
						<option value="default">default</option>
						<%for(EmployeeBean empBean:managerslist)
						{
						%>
						
						<option value=<%=empBean.getEmployeeId() %>>
						<%=empBean.getFirstName()+" "+empBean.getLastName()%></option>
						<%} %>
						</select>
						</td>
						
						</tr>
						<tr>
							<td>Notice Period:</td>
							<td><select name="noticePeriod" onkeypress="clearForm()" id="noticePeriod">
									<option value="0">Enter notice period</option>
									<option value="10">10days</option>
									<option value="15">15days</option>
									<option value="30">1month</option>
									<option value="20">20days</option>
									<option value="60">2months</option>

							</select><br> <br></td>
							<td><p id="errorMsg20" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Location:</td>
							<td><input type=text name="location" onkeypress="clearForm()" id="location"><br> <br></td>
							<td><p id="errorMsg21" style=color:red;></p></td> 
							
						
						</tr>
						<tr>
							<td>Experience:</td>
							<td><input type=text name="experience" onkeypress="clearForm()" id="experience"><br> <br></td>
							<td><p id="errorMsg22" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Current CTC:</td>
							<td><input type=text name="currentCTC" onkeypress="clearForm()" id="currentCTC"><br> <br></td>
							<td><p id="errorMsg23" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Excepted CTC:</td>
							<td><input type=text name="expectedCTC" onkeypress="clearForm()" id="expectedCTC"><br> <br></td>
							<td><p id="errorMsg24" style=color:red;></p></td> 
							
						</tr>
						
					</table>
					</center>
					<br>
					<center>
						<input type=submit onclick="return registrationValidation()"
							value="submit" class="button">

					</center>
				</div>
				
				</div>
				</form>
				</div>
				
</body>
</html>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


