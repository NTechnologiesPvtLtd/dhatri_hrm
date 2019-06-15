
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>userupdate</title>
<style>
body {
	padding: 0px;
	margin: 0px;
	background: url(111.jpeg) no-repeat;
	background-size: cover;
	background-position: center;
}

h1 {
	text-align: center;
}

h4 {
	animation: blinkingText 0.8s infinite;
}

@
keyframes blinkingText { 0%{
	color: Black;
}

50%{
color


:

 

red


;
}
99%{
color


:

 

black


;
}
100%{
color


:

 

Black


;
}
}
table {
	font-family: Constantia;
	font-
}

a {
	text-decoration: none;
}

input[type="text"] {
	border: None;
	border-bottom: 1px solid silver;
	background: transparent;
	outline: none;
	height: 30px;
	color: Black;
	font-size: 16px;
}

input[type="submit"] {
	background: blue;
	color: white;
	font-size: 20px;
	font-family: Constantia;
}

input[type="submit"]:hover {
	Color: Blue;
	background: White;
}

ul {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul li {
	float: left;
	width: 200px;
	height: 40px;
	background-color: black;
	opacity: .8;
	text-align: center;
	line-height: 40px;
	margin-right: 2px;
}

ul li  {
	text-decoration: none;
	color: white;
	display: block;
}

ul li a:hover {
	background-color: Blue;
}

ul li ul li {
	display: none;
}

ul li:hover ul li {
	display: block;
}
}
</style>
</head>
<body>
<jsp:include page="LoginView.jsp"></jsp:include>

		<center>
			<form action="UpdateServlet" method="post">
				<H4>Update Your Profile Here</H4>
				<a name="top"> </a>
				<%
					SharedObject.setSession(request.getSession());
				%>
				<%
					Object obj = SharedObject
							.getFromSession(EmployeeConstants.EMPLOYEE_ID);
					String userId = "";
					if (null != obj) {
						userId = (String) obj;
					}
					HRMService service = new HRMServicesImplementation();
					EmployeeBean bean = service.search(userId);

				%>
				<h1>Personal Informaion</h1>
				<table>
					<tr>
						<td>Employee Id</td> ${empid}
						<td><input type="text" name="empid"
							value="<%=SharedObject
					.getFromSession(EmployeeConstants.EMPLOYEE_ID)%>"></td>
					</tr>
					<tr>
						<td>FirstName:*</td>
						<td><input type="text" onkeypress="clearForm()"
							name="Firstname" id="Firstname" value="<%=bean.getFirstName()%>"></td>
						<td><p id="errorMsg" style="color: red;"></p></td>
					</tr>

					<tr>
						<td>LastName:*</td>
						<td><input type="text" onkeypress="clearForm()"
							name="lastname" id="Lastname" value="<%=bean.getLastName()%>"></td>
						<td><p id="errorMsg1" style="color: red;"></p></td>
					</tr>
					<tr>
						<td>FatherName:*</td>
						<td><input type="text" onkeypress="clearForm()"
							name="fathername" id="Fathername"
							value="<%=bean.getFatherName()%>"></td>
						<td><p id="errorMsg1" style="color: red;"></p></td>
					</tr>
					
					
					<tr>
						<td>Gender:*</td>
						<td><input type="text" onkeypress="clearForm()"
							name="Gender" id="Gender" value="<%=bean.getGender()%>">
						<td><p id="errorMsg4" style="color: red;"></p></td>
					

					</tr>

					<tr>
						<td>Date Of Birthday:*</td>
						<td><input type="text" onkeypress="clearForm()" name="dob"
							id="dob" value="<%=bean.getDob()%>">
						<td><p id="errorMsg	5" style="color: red;"></p></td></td>
					</tr>
					<tr>
						<td>Email Id:*</td>
						<td><input type="email"
							pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
							onkeypress="clearForm()" name="EmailId" id="EmailId"
							value=<%=bean.getEmailId()%>></td>
						<td><p id="errorMsg6" style="color: red;"></p></td>
					</tr>
					<tr>
						<td>mobile Number:*</td>
						<td><input type="text" text-align:right; pattern="[0-9]{10}"
							title="Mobile number must be 10 digits" onkeypress="clearForm()"
							name="mobileNumber" id="mobileNumber"
							value=<%=bean.getMobileNumber()%>></td>
						<td><p id="errorMsg3" style="color: red;"></p></td>
					</tr>
					<tr>
						<td>AdharcardNumber:*</td>
						<td><input type="text" pattern="[0-9]{12}"
							title="Aadhar Card Number must be 12 digits"
							onkeypress="clearForm()" name="Adharno" id="AdharcardNumber"
							value=<%=bean.getAadharNo()%>>
						<td><p id="errorMsg9" style="color: red;"></p></td>
						</td>
					</tr>

					<tr>
						<td>PermanentaAddress:*</td>
						<td><textarea rows="2" onkeypress="clearForm()"
								name="PermanentaAddress" id="PermanentaAddress"><%=bean.getPermanentAddress()%>
</textarea>
						<td><p id="errorMsg7" style="color: red;"></p></td>
						</td>

					</tr>
					<tr>
						<td>localAdress:*</td>
						<td><textarea rows="2" onkeypress="clearForm()"
								name="LocalAdress" id="LocalAdress"><%=bean.getLocalAddress()%>
</textarea>
						<td><p id="errorMsg8" style="color: red;"></p></td>
						</td>
					</tr>

				</table>
				<h2>Educational Information</h2>
				<br> <br>
				<table>
					<tr>
						<td>Board Of Secondary Education*:</td>
						<td><input type=text name="schoolName"
							onkeypress="clearForm()" id="schoolName"
							value=<%=bean.getSchoolName()%>><br> <br></td>
						<td><p id="errorMsg10" style="color: red;"></p></td>

						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Passedout*:</td>

						<td><input type=text name="tenthPassedOut"
							onkeypress="clearForm()" id="tenthPassedOut"
							value=<%=bean.getTenthPassedOut()%>></td>
						<td><p id="errorMsg11" style="color: red;"></p></td>

					</tr>
					<tr>
						<td>Board Of Intermediate Education*:</td>
						<td><input type=text name="intermediateCollegeName"
							onkeypress="clearForm()" id="intermediateCollegeName"
							value=<%=bean.getIntermediateCollegeName()%>> </select><br> <br></td>
						<td><p id="errorMsg12" style="color: red;"></p></td>

						<td>&nbsp;&nbsp;&nbsp;&nbsp;Passedout*:</td>
						<td><input type=text name="interPassedOut"
							onkeypress="clearForm()" id="interPassedOut"
							value=<%=bean.getInterPassedOut()%>></td>
						<td><p id="errorMsg13" style="color: red;"></p></td>

					</tr>
					<tr>

						<td>Graduation Details*:</td>
						<!-- <td><select name="graduationDetails" onkeypress="clearForm()"
							id="graduationDetails" />
							<optgroup label=graduation>
								<option>select branch</option>
								<option value="B.Tech" checked>B.TECH</option>
								<option value="M.Tech" checked>M.TECH</option>
								<option value="MBA" checked>MBA</option>
								<option value="PG" checked>PG</option>
							</optgroup> </select> <br> <br></td> -->
						<td><input type="text" value=<%=bean.getGraduationDetails()%>
							disabled="disabled"></td>
						<td><p id="errorMsg14" style="color: red;"></p></td>

						<td>&nbsp;&nbsp;&nbsp;&nbsp;Passedout*:</td>
						<td><input type=text name="graduationPassedOut"
							onkeypress="clearForm()" id="graduationPassedOut"
							value=<%=bean.getGraduationPassedOut()%>></td>
						<td><p id="errorMsg15" style="color: red;"></p></td>

					</tr>
					<tr>
						<td>Branch*:</td>
						<!-- <td><select name="branch" onkeypress="clearForm()"
							id="branch"/> -->
								<!-- <option value="None">Enter Your Branch</option>
								<option value="ECE">ECE</option>
								<option value="EEE">EEE</option>
								<option value="CSE">CSE</option>
								<option value="Civil">CIVIL</option>
								<option value="Mechanical">MECHANICAL</option>
								<option value="Bcom">Bcom</option>
						</select></td> -->
						<td><input type="text" value=<%=bean.getBranch()%>></td>
						<td><p id="errorMsg16" style="color: red;"></p></td>


						<td>&nbsp;&nbsp;&nbsp;&nbsp;University*:</td>
						<td><input type=text name="university"
							onkeypress="clearForm()" id="university"
							value=<%=bean.getUniversity()%>></td>
						<td><p id="errorMsg17" style="color: red;"></p></td>

					</tr>
				</table>
				<table>

					<br>
					<h3>Job Experience Information:</h3>
					<br>
					<br>
					<tr>
						<td>Company Name:</td>
						<td><input type=text name="companyName"
							onkeypress="clearForm()" id="companyName"
							value=<%=bean.getCompanyName()%>><br> <br></td>
						<td><p id="errorMsg18" style="color: red;"></p></td>
					</tr>
					<td>Role:</td>
						<td><input type=text name="roleDetails"
							onkeypress="clearForm()" id="roleDetails"
							value=<%=bean.getRole()%>><br> <br></td>
						<td><p id="errorMsg18" style="color: red;"></p></td>
					</tr>
					
					<tr>
						<td>Notice Period:</td>
						<%-- <td><select name="noticePeriod" onkeypress="clearForm()"
							id="noticePeriod" value=<%=bean.getNoticePeriod()%>>
								<option value="0">Enter notice period</option>
								<option value="10">10days</option>
								<option value="15">15days</option>
								<option value="30">1month</option>
								<option value="20">20days</option>
								<option value="60">2months</option>

						</select><br> <br></td> --%>
						<td><input type=text name="noticePeriod"
							onkeypress="clearForm()" id="noticePeriod"
							value=<%=bean.getNoticePeriod()%>><br> <br></td></td>
						<td><p id="errorMsg20" style="color: red;"></p></td>

					</tr>
					<tr>
						<td>Location:</td>
						<td><input type=text name="location" onkeypress="clearForm()"
							id="location" value=<%=bean.getLocation()%>><br> <br></td>
						<td><p id="errorMsg21" style="color: red;"></p></td>

						<!-- <center style="text-align:top"></center> -->
					</tr>
					<tr>
						<td>Experience:</td>
						<td><input type=text name="experience"
							onkeypress="clearForm()" id="experience"
							value=<%=bean.getExperience()%>><br> <br></td>
						<td><p id="errorMsg22" style="color: red;"></p></td>

					</tr>
					<tr>
						<td>Current CTC:</td>
						<td><input type=text name="currentCTC"
							onkeypress="clearForm()" id="currentCTC"
							value="<%=bean.getCurrentCTC()%>"><br> <br></td>
						<td><p id="errorMsg23" style="color: red;"></p></td>

					</tr>

					<tr>
						<td>Excepted CTC:</td>
						<td><input type=text name="expectedCTC"
							onkeypress="clearForm()" id="expectedCTC"
							value=<%=bean.getExpectedCTC()%>><br> <br></td>
						<td><p id="errorMsg24" style="color: red;"></p></td>

					</tr>
					<tr>
						<td>Manager:</td>
						<td><input type=text name="empmanager"
							onkeypress="clearForm()" id="empmanager"
							value=<%=bean.getManager()%>><br> <br></td>
						<td><p id="errorMsg24" style="color: red;"></p></td>

					</tr>
				</table>
				<br>
				<center>
					<input type=submit onclick="return  userupdatevalidation()"
						value="update" class="button">
					</table>
				</center>
				<p style="text-decoration: none; color: black; text-align: right;">
					<a href="#top"> Scroll top </a>
				</p>
			</form>
		</center>
</body>
</html>