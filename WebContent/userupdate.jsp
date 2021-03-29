
<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>
<%@page import="com.hrm.bean.EmployeeBean"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script type="text/javascript" src="userupdatevalidation.js"></script>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style type="text/css">
div {text-align: center;}
</style>
<title>userupdate</title>

</head>
<body>
<%
				SharedObject.setSession(request.getSession());
			%>
			<%
				Object obj = SharedObject.getFromSession(EmployeeConstants.EMPLOYEE_ID);
				String userId = "";
				if (null != obj) {
					userId = (String) obj;
				}
				HRMService service = new HRMServicesImplementation();
				List<EmployeeBean> b = service.search(userId);
				EmployeeBean bean=null;
				bean=b.get(0);
				SharedObject.putInToSession("LoginMailId", bean.getEmailId());
                //out.println("key"+bean.getEmailId());
			%>

<div class="container-fluid">
	<nav class="navbar navbar-expand-sm bg-dark fixed-top navbar-dark">
	
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp"><strong>Dhatsol It Solutions</strong></a>
		</div>
  		<ul class="navbar-nav ml-auto">
    		<li class="nav-item active"><a class="nav-link"  href="index.jsp"><strong>Home</strong></a></li>
    		<li class="nav-item active"><a class="nav-link" href="Aboutus.jsp"><strong>Aboutus</strong></a></li>
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
  
  <a href="userupdate.jsp" class="btn btn-info" role="button">UpdateProfile</a>
  <a href="Payslip.jsp" class="btn btn-info" role="button">DownloadPayslip</a>
  <a href="CreateRequest.jsp" class="btn btn-info" role="button">CreateRequest</a>
  
</div>
<div class="container">
		<form action="UpdateServlet" method="post">
			<H4>Update Your Profile Here</H4>
			<a name="top"> </a>
			
			
			
			<h4>Personal Informaion</h4>
			<table>
				<tr>
					<td>Employee Id</td>
					<td><input type="text" name="employeeId" value="<%=SharedObject.getFromSession(EmployeeConstants.EMPLOYEE_ID)%>"></td>
				</tr>
				<tr>
					<td>FirstName:*</td>
					<td><input type="text" onkeypress="clearForm()" name="firstName" id="firstName" value="<%=bean.getFirstName()%>"></td>
					<td><span id="Firstname" class="text-danger"> </span></td>
				</tr>
				<tr>
					<td>LastName:*</td>
					<td><input type="text" onkeypress="clearForm()" name="lastName" id="lastName" value="<%=bean.getLastName()%>"></td>
					<td><span id="Lastname" class="text-danger"></span></td>
				</tr>
				<tr>
					<td>FatherName:*</td>
					<td><input type="text" onkeypress="clearForm()" name="fatherName" id="fatherName" value="<%=bean.getFatherName()%>"></td>
					<td><span id="Fathername" class="text-danger"></span></td>
				</tr>
				<tr>
					<td>Gender:*</td>
					<td><input type="text" onkeypress="clearForm()" name="gender" id="gender" value="<%=bean.getGender()%>">
					<td><span id="Gender" class="text-danger"></span></td>
				</tr>
				<tr>
					<td>Date Of Birthday:*</td>
					<td><input type="text" onkeypress="clearForm()" name="dob" id="dob" value="<%=bean.getDob()%>">
					<td><span id="DOB" class="text-danger"> </span></td>
				</tr>
				<tr>
					<td>Email Id:*</td>
					<td><input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" onkeypress="clearForm()" name="emailId" id="emailId" value=<%=bean.getEmailId()%>></td>
					<td><span id="Emailid" class="text-danger"> </span></td>
				</tr>
				<tr>
					<td>mobile Number:*</td>
					<td><input type="text" text-align:right; pattern="[0-9]{10}" title="Mobile number must be 10 digits" onkeypress="clearForm()" name="mobileNumber" id="mobileNumber" value=<%=bean.getMobileNumber()%>></td>
					<td><span id="mobileno" class="text-danger"> </span></td>
				</tr>
				<tr>
					<td>Alternate MobileNumber:*</td>
					<td><input type="text" text-align:right; pattern="[0-9]{10}" title="Alternate MobileNumber must be 10 digits" onkeypress="clearForm()" name="Alternate MobileNumber" id="AlternateMobileNumber" value=<%=bean.getAlternateMobileNumber()%>></td>
				</tr>
				<tr>
					<td>AdharcardNumber:*</td>
					<td><input type="text" pattern="[0-9]{12}" title="Aadhar Card Number must be 12 digits" onkeypress="clearForm()" name="aadharNo" id="aadharNo" value=<%=bean.getAadharNo()%>>
					<td><span id="Aadharno" class="text-danger"> </span></td>
				</tr>
				<tr>
					<td>PanNumber:*</td>
					<td><input type="text" text-align:right; pattern="[0-9]{10}" title="PanNumber must be 10 digits" onkeypress="clearForm()" name="panNo" id="panNo" value=<%=bean.getPanNumber()%>></td>
					<td><span id="Panno" class="text-danger"> </span></td>
				</tr>
				<tr>
					<td>PassportNumber:*</td>
					<td><input type="text" text-align:right; pattern="[0-9]{8}" title="passportNumber must be 8 digits" onkeypress="clearForm()" name="passportNo" id="passportNo" value=<%=bean.getPassportNumber()%>></td>
					<td><span id="Passportno" class="text-danger"> </span></td>
				</tr>
				<tr>
					<td>PermanentAddress:*</td>
					<td><textarea rows="2" onkeypress="clearForm()" name="permanentAddress" id="permanentAddress"><%=bean.getPermanentAddress()%> </textarea>
					<td><span id="Permanentadd" class="text-danger"> </span></td>
				</tr>
				<tr>
					<td>localAdress:*</td>
					<td><textarea rows="2" onkeypress="clearForm()" name="localAddress" id="localAddress"><%=bean.getLocalAddress()%> </textarea>
					<td><span id="Localadd" class="text-danger"> </span></td>
				</tr>
			</table>
			<h4>Educational Information</h4>
			<br> <br>
			<table>
				<tr>
					<td>Board Of Secondary Education*:</td>
					<td><input type=text name="schoolName" onkeypress="clearForm()" id="schoolName" value=<%=bean.getSchoolName()%>><br> <br></td>
					<td><span id="Schoolname" class="text-danger"> </span></td>

					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Passedout*:</td>
					<td><input type=text name="tenthPassedOut" onkeypress="clearForm()" id="tenthPassedOut" value=<%=bean.getTenthPassedOut()%>></td>
					<td><span id="Tenthpassedout" class="text-danger"> </span></td>
				</tr>
				<tr>
					<td>Board Of Intermediate Education*:</td>
					<td><input type=text name="intermediateCollegeName" onkeypress="clearForm()" id="intermediateCollegeName" value=<%=bean.getIntermediateCollegeName()%>><br> <br></td>
					<td><span id="Intercollegename" class="text-danger"> </span></td>

					<td>&nbsp;&nbsp;&nbsp;&nbsp;Passedout*:</td>
					<td><input type=text name="interPassedOut" onkeypress="clearForm()" id="interPassedOut" value=<%=bean.getInterPassedOut()%>></td>
					<td><span id="Interpassedout" class="text-danger"> </span></td>
				</tr>
				<tr>
					<td>Graduation Details*:</td>
					<td><input type="text" value=<%=bean.getGraduationDetails()%> disabled="disabled"></td>
					<td><span id='Graduationdetails' class='text-danger'> </span></td>

					<td>&nbsp;&nbsp;&nbsp;&nbsp;Passedout*:</td>
					<td><input type=text name="graduationPassedOut" onkeypress="clearForm()" id="graduationPassedOut" value=<%=bean.getGraduationPassedOut()%>></td>
					<td><span id='Graduationpassedout' class='text-danger'> </span></td>
				</tr>
				<tr>
					<td>Branch*:</td>
					<td><input type="text" value=<%=bean.getBranch()%>></td>
					<td><span id='Branch' class='text-danger'> </span></td>

					<td>&nbsp;&nbsp;&nbsp;&nbsp;University*:</td>
					<td><input type=text name="university" onkeypress="clearForm()" id="university" value=<%=bean.getUniversity()%>></td>
					<td><span id='University' class='text-danger'> </span></td>
				</tr>
			</table>
			
			<table>
			<br>
				<h4>Job Experience Information:</h4>
				
					<tr>
						<td>Company Name:</td>
						<td><input type=text name="companyName" onkeypress="clearForm()" id="companyName" value=<%=bean.getCompanyName()%>><br> <br></td>
						<td><span id='Companyname' class='text-danger'> </span></td>
					</tr>
					<tr>
						<td>Role:</td>
						<td><input type=text name="roleDetails" onkeypress="clearForm()" id="roleDetails" value=<%=bean.getRole()%>><br> <br></td>
						<td><span id='Role' class='text-danger'> </span></td>
					</tr>
					<tr>
						<td>Location:</td>
						<td><input type=text name="location" onkeypress="clearForm()" id="location" value=<%=bean.getLocation()%>><br> <br></td>
						<td><span id='Location' class='text-danger'> </span></td>
					</tr>
					<tr>
						<td>Experience:</td>
						<td><input type=text name="experience" onkeypress="clearForm()" id="experience" value=<%=bean.getExperience()%>><br> <br></td>
						<td><span id='Experience' class='text-danger'> </span></td>

					</tr>
					<tr>
						<td>Current CTC:</td>
						<td><input type=text name="currentCTC" onkeypress="clearForm()" id="currentCTC" value="<%=bean.getCurrentCTC()%>"><br> <br></td>
						<td><span id='Currentctc' class='text-danger'> </span></td>
					</tr>
			</table>
			<table>
			<br>
				<h4>Bank Information:</h4>
					<tr>
						<td>Bank Name:</td>
						<td><input type=text name="bankName" onkeypress="clearForm()" id="bankName" value=<%=bean.getBankname()%>><br> <br></td>
						<td><span id="Bankname" class="text-danger"> </span></td>

					</tr>
					<tr>
						<td>Bank AccountNumber:</td>
						<td><input type=text name="bankAccNo" onkeypress="clearForm()" id="bankAccNo" value=<%=bean.getBankAccNo()%>><br> <br></td>
						<td><span id="Bankaccno" class="text-danger"> </span></td>

					</tr>
					<tr>
						<td>IFSC CODE:</td>
						<td><input type=text name="ifscCode" onkeypress="clearForm()" id="ifscCode" value=<%=bean.getIfscCode()%>><br> <br></td>
						<td><span id="Ifsccode" class="text-danger"> </span></td>

					</tr>
			</table>
			<br>
			<input type=submit onclick="return  userupdatevalidation()" value="update" class="button">
			<p style="text-decoration: none; color: black; text-align: right;"> <a href="#top"> Scroll top </a></p>
			</form>
</div>		
</body>
</html>