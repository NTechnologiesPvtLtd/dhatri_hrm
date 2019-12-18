<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@page import="com.hrm.bean.EmployeeBean"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="com.hrm.services.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dhatsol</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	  <link rel="stylesheet" media="all" href="stylesheets/bootstrap.css"/>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function showcommentform() {
		var data = "EmployeeId:<input type='text' name='employeeId'><br><br>";

		document.getElementById('location').innerHTML = data;
	}

	function showcommentform1() {
		document.getElementById('location').innerHTML = "";
	}
	var counter = 1;
	var limit = 4;
	function addDetails(divName){
		if(counter == limit){
			alert("You have reached the limit of adding 3 Graduation Details.");
		}else{
			var newdiv = document.createElement('div');
			newdiv.innerHTML = "<div class='row'><div class='col-sm-3' align='left'>Graduation Details:"+counter+"<font color='red'>*</font> <select name='graduationDetails' onkeypress='clearForm()' id='graduationDetails'><option value='None'>Select Branch</option><option value='B.Tech'>B.TECH</option><option value='M.Tech'>M.TECH</option><option value='MBA'>MBA</option><option value='PG'>PG</option></select><br> <br><p id='errorMsg14' style='color: red;'></p></div><div class='col-sm-3' align='left'>Passedout:<font color='red'>*</font> <input type=text name='graduationPassedOut' onkeypress='clearForm()'	id='graduationPassedOut' maxlength='4' title='Only 4 digits are allowed'><p id='errorMsg15' style='color: red;'></p></div><div class='col-sm-3' align='left'>Branch:<font color='red'>*</font> <select name='branch' onkeypress='clearForm()' id='branch'><option value='None'>Enter Your Branch</option><option value='ECE'>ECE</option><option value='EEE'>EEE</option><option value='CSE'>CSE</option><option value='Civil'>CIVIL</option><option value='Mechanical'>MECHANICAL</option><option value='Bcom'>Bcom</option></select><p id='errorMsg16' style='color: red;''></p></div><div class='col-sm-3' align='left'>	University:<font color='red'>*</font> <input type=text name='university' onkeypress='clearForm()' id='university'><p id='errorMsg17' style='color: red;'></p></div></div>";
			document.getElementById(divName).appendChild(newdiv);
			counter++;
		}
	}
	</script>
	<script type="text/javascript">
	var counter1 = 1;
	var limit1 = 4;
	function addDetails2(divName1){
		if(counter1 == limit1){
			alert("You have reached the limit of adding 3 Job Experience Information.");
		}else{
			var newdiv1 = document.createElement('div');
			newdiv1.innerHTML = "<div class='row'><div class='col-sm-4' align='left'>Company Name:"+counter1+" <input type=text name='companyName' onkeypress='clearForm()' id='companyName'><br> <br><p id='errorMsg18' style='color: red;'></p></div>	<div class='col-sm-4' align='left'>	Role: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='roleDetails' onkeypress='clearForm()' id='roleDetails'>	<option value='None'>Select role</option><option value='associative engineer'>Associative Engineer</option>	<option value='software engineer'>Software Engineer</option><option value='senior software engineer'>Senior	Software Engineer</option><option value='lead analyst'>Lead Analyst</option><option value='Project Manager'>Project Manager</option><option value='HR Manager'>HR Manager</option><option value='Admin'>Admin</option></select><p id='errorMsg19' style='color: red;'></p></div><div class='col-sm-4' align='left'>Manager: &nbsp;&nbsp;&nbsp;&nbsp;<select name='empmanager'	id='empmanager'><option value='default'>default</option></select></div></div><div class='row'><div class='col-sm-4' align='left'>Location: <input type=text name='location' onkeypress='clearForm()' id='location'><br> <br><p id='errorMsg21' style='color: red;'></p></div><div class='col-sm-4' align='left'>Experience: <input type=text name='experience'	onkeypress='clearForm()' id='experience'><br> <br><p id='errorMsg22' style='color: red;'></p></div>	<div class='col-sm-4' align='left'>Current CTC: <input type=text name='currentCTC' onkeypress='clearForm()' id='currentCTC'><br> <br><p id='errorMsg23' style='color: red;'></p></div></div>";
			document.getElementById(divName1).appendChild(newdiv1);
			counter1++;
		}
	}
</script>
<!-- <style type="text/css">
textarea.wt-resize{
resize: none;
}</style>
	 -->
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">Dhatsol It Solutions</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="index.jsp">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Employee <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="EmployeeRegistration.jsp">New Registration</a></li>
					<li><a href="#">Response Approved</a></li>
					<li><a href="EmployeeViewDirection.jsp">Search Employee</a></li>
				</ul></li>
			<li><a href="Login.jsp">Login</a></li>
			<li><a href="Aboutus.jsp">Aboutus</a></li>
		</ul>
	</div>
	</nav>
	
	<div id="#mainform">
		<div class="container" style="background-image: url(blue.jpg)";>

			<center>
				<h1 style="color: red padding:50% margin-top:50% height:20%";>

				</h1>
				<hr>
				<label for="employee">Employee: </label> <input type="radio"
					id="employee" name="employee" value="NewEmployee"
					onclick="showcommentform1()">NewEmployee <input type="radio"
					id="employee" name="employee" value="ExistingEmployee"
					onclick="showcommentform()">ExistingEmployee<br>

				<p2 id="errorMsg3" style=color:red;></p2>

				<form action="RegistrationServlet" method="post">
				
					<p styple="padding-left :0cm;">__________________________________________________________________________________________________________________________________________________</p>
					<h2>Personal Information</h2>
					<br>
						<div id="location"></div>

					<div class="row">
						<div class="col-sm-4" align="left">
							First Name:<font color="red">*</font> <input type=text
								onkeypress="clearForm()" id="firstName" name="firstName"><br>
							<br>
							<p id="errorMsg" style="color: red;"></p>
						</div>

						<div class="col-sm-4" align="left">
							Last Name:<font color="red">*</font>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="text" onkeypress="clearForm()" id="lastName"
								name="lastName"><br> <br>
							<p id="errorMsg1" style="color: red;"></p>
						</div>


						<div class="col-sm-4" align="left">
							Father Name:<font color="red">*</font> <input type="text"
								onkeypress="clearForm()" id="fatherName" name="fatherName"><br>
							<br>
							<p id="errorMsg2" style="color: red;"></p>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-4" align="left">
							Gender:<font color="red">*</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="radio" name="gender" value="Male" onkeypress="clearForm()"
								id="gender">Male <input type="radio" name="gender"
								value="Female">Female <input type="radio" name="gender"
								value="Others">Others


							<p2 id="errorMsg3" style=color:red;></p2>
							<br> <br>
						</div>


						<div class="col-sm-4" align="left">
							Date Of Birth:<font color="red">*</font>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="dob"
								id="dob" onkeypress="clearForm()">
							<p id="errorMsg4" style="color: red;"></p>
						</div>

						<div class="col-sm-4" align="left">
							Email Id:<font color="red">*</font>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=text
								onkeypress="clearForm()" id="emailId" name="emailId"><br>
							<br>
							<p id="errorMsg5" style="color: red;"></p>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6" align="left">
							Mobile No:<font color="red">*</font> &nbsp;<input type=text
								onkeypress="clearForm()" id="mobileNumber" name="mobileNumber"
								text-align:right; pattern="[0-9]{10}"
								title="Mobile number must be 10 digits"
								placeholder="Mobile number" required><br> <br>
							<p id="errorMsg6" style="color: red;"></p>
						</div>
						<div class="col-sm-6" align="left">
							Alternate Mobile No:<font color="red">*</font> &nbsp;<input type=text
								onkeypress="clearForm()" id="alternatemobileNumber" name="alternatemobileNumber"
								text-align:right; pattern="[0-9]{10}"
								title="Alternate Mobile number must be 10 digits"
								placeholder="Mobile number" required><br> <br>
							<p id="errorMsg27" style="color: red;"></p>
						</div>
						</div>

					<div class="row">
						<div class="col-sm-4" align="left">
							Aadhar Number:<font color="red">*</font> <input type=text
								name="aadharNo" onkeypress="clearForm()" id="aadharNo"
								pattern="[0-9]{12}" title="Aadhar Card Number must be 12 digits"
								placeholder="Enter AadharCardNumber" required>
							<p id="errorMsg7" style="color: red;"></p>
						</div>
						<div class="col-sm-4" align="left">
							PAN Number:<font color="red">*</font> <input type=text
								name="panNo" onkeypress="clearForm()" id="panNo"
								pattern="{10}" title="PAN Card Number must be 10 digits"
								placeholder="Enter PANCardNumber" required>
							<p id="errorMsg25" style="color: red;"></p>
						</div>
						<div class="col-sm-4" align="left">
							Passport Number:<font color="red">*</font> <input type=text
								name="passportNo" onkeypress="clearForm()" id="passportNo"
								pattern="{8}" title="Passport Number must be 8 digits"
								placeholder="Enter PassportNumber" required>
							<p id="errorMsg26" style="color: red;"></p>
						</div>
					</div><br>

					<div class="row">
						<div class="col-sm-8" align="left">
							Permanent Address:<font color="red">*</font>
							<textarea onkeypress="clearForm()" id="permanentAddress"
								name="permanentAddress"></textarea>
								<br><br>
							<p id="errorMsg8" style="color: red;"></p>
						</div>

						<div class="col-sm-4" align="left">
							Local Address:<font color="red">*</font>
							<textarea onkeypress="clearForm()" id="localAddress"
								name="localAddress"></textarea>
							<br> <br>
							<p id="errorMsg9" style="color: red;"></p>
						</div>
					</div>

					<p styple="padding-left :0cm;">__________________________________________________________________________________________________________________________________________________</p>
					<h2>Educational Information</h2>
					<br>
					<div class="row">
						<div class="col-sm-6" align="left">
							Board Of Secondary Education:<font color="red">*</font>
							&nbsp;&nbsp;&nbsp;<input type=text name="schoolName"
								onkeypress="clearForm()" id="schoolName"><br> <br>
							<p id="errorMsg10" style="color: red;"></p>
						</div>
						<div class="col-sm-6" align="left">
							Passedout:<font color="red">*</font> <input type=text
								name="tenthPassedOut" onkeypress="clearForm()"
								id="tenthPassedOut" maxlength="4"
								title="Only 4 digits are allowed">
							<p id="errorMsg11" style="color: red;"></p>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-6" align="left">
							Board Of Intermediate Education:<font color="red">*</font> <input
								type=text name="intermediateCollegeName"
								onkeypress="clearForm()" id="intermediateCollegeName"> </select><br>
							<br>
							<p id="errorMsg12" style="color: red;"></p>
						</div>

						<div class="col-sm-6" align="left">
							Passedout:<font color="red">*</font> <input type=text
								name="interPassedOut" onkeypress="clearForm()"
								id="interPassedOut" maxlength="4"
								title="Only 4 digits are allowed">
							<p id="errorMsg13" style="color: red;"></p>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-12" align="center">
						<div id="dynamicInput"></div>
						<input type="button" value="Graduation Details" id="Graduation Details" name="graduate" onclick="addDetails('dynamicInput')">
						</div>
					</div>
					
					<!-- <div class="row">
						<div class="col-sm-3" align="left">
							 Graduation Details:<font color="red">*</font> <select
								name="graduationDetails" onkeypress="clearForm()"
								id="graduationDetails">
								<option value="None">Select Branch</option>
								<option value="B.Tech">B.TECH</option>
								<option value="M.Tech">M.TECH</option>
								<option value="MBA">MBA</option>
								<option value="PG">PG</option>

							</select><br> <br>
							</td>
							<p id="errorMsg14" style="color: red;"></p>
						</div>

						<div class="col-sm-3" align="left">
							Passedout:<font color="red">*</font> <input type=text
								name="graduationPassedOut" onkeypress="clearForm()"
								id="graduationPassedOut" maxlength="4"
								title="Only 4 digits are allowed">
							<p id="errorMsg15" style="color: red;"></p>
						</div>


						<div class="col-sm-3" align="left">
							Branch:<font color="red">*</font> <select name="branch"
								onkeypress="clearForm()" id="branch">
								<option value="None">Enter Your Branch</option>
								<option value="ECE">ECE</option>
								<option value="EEE">EEE</option>
								<option value="CSE">CSE</option>
								<option value="Civil">CIVIL</option>
								<option value="Mechanical">MECHANICAL</option>
								<option value="Bcom">Bcom</option>
							</select>
							<p id="errorMsg16" style="color: red;"></p>
						</div>


						<div class="col-sm-3" align="left">
							University:<font color="red">*</font> <input type=text
								name="university" onkeypress="clearForm()" id="university">
							<p id="errorMsg17" style="color: red;"></p>
						</div>
					</div>			-->
					
					<p styple="padding-left :0cm;">
						<b>__________________________________________________________________________________________________________________________________________________</b>
					</p>
					<h3>Job Experience Information:</h3>
					<br>
					<div class="row">
						<div class="col-sm-12" align="center">
						<div id="dynamicInput1"></div>
						<input type="button" value="Job Experience Information" id="Job Experience Information" name="graduate" onclick="addDetails2('dynamicInput1')">
						
						<%
							EmployeeBean employeeBean = new EmployeeBean();
							HRMService service = new HRMServicesImplementation();
							List<EmployeeBean> managerslist = service.searchManager("Project Manager");
						%>
						<!-- <div class="col-sm-4" align="left">
							Manager: &nbsp;&nbsp;&nbsp;&nbsp;<select name="empmanager"
								id="empmanager"> -->
								<%
									for (EmployeeBean empBean : managerslist) {
								%>

								<option value=<%=empBean.getEmployeeId()%>>
									<%=empBean.getFirstName() + " " + empBean.getLastName()%></option>
								<%
									}
								%>
						</div>
					</div><br><br>
					
					<div class="row">
						<div class="col-sm-12" align="left">
						Upload Resume:
						<div name="UploadResume" class="btn btn-default"><input type="file" name="file"/></div>
						</div>
					</div>
					
					<%-- <div class="row">
						<div class="col-sm-4" align="left">
							Company Name: <input type=text name="companyName"
								onkeypress="clearForm()" id="companyName"><br> <br>
							<p id="errorMsg18" style="color: red;"></p>
						</div>

						<div class="col-sm-4" align="left">
							Role: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select
								name="roleDetails" onkeypress="clearForm()" id="roleDetails">
								<option value="None">Select role</option>
								<option value="associative engineer">Associative
									Engineer</option>
								<option value="software engineer">Software Engineer</option>
								<option value="senior software engineer">Senior
									Software Engineer</option>
								<option value="lead analyst">Lead Analyst</option>
								<option value="Project Manager">Project Manager</option>
								<option value="HR Manager">HR Manager</option>
								<option value="Admin">Admin</option>

							</select>
							<p id="errorMsg19" style="color: red;"></p>
						</div>


						<%
							EmployeeBean employeeBean = new EmployeeBean();
							HRMService service = new HRMServicesImplementation();
							List<EmployeeBean> managerslist = service.searchManager("Project Manager");
						%>
						<div class="col-sm-4" align="left">
							Manager: &nbsp;&nbsp;&nbsp;&nbsp;<select name="empmanager"
								id="empmanager">
								<option value="default">default</option>
								<%
									for (EmployeeBean empBean : managerslist) {
								%>

								<option value=<%=empBean.getEmployeeId()%>>
									<%=empBean.getFirstName() + " " + empBean.getLastName()%></option>
								<%
									}
								%>
							</select>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-4" align="">
						<div name="UploadResume" class="btn btn-default"><input type="file" name="file"/></div>
						<!-- <div >
							UploadResume
							
						</div> -->
							<!-- Notice Period: &nbsp;&nbsp;&nbsp;&nbsp;<select
								name="noticePeriod" onkeypress="clearForm()" id="noticePeriod">
								<option value="0">Enter notice period</option>
								<option value="10">10days</option>
								<option value="15">15days</option>
								<option value="30">1month</option>
								<option value="20">20days</option>
								<option value="60">2months</option>

							</select><br> <br>
							<p id="errorMsg20" style="color: red;"></p> -->
						</div>


						<div class="col-sm-4" align="left">
							Location: <input type=text name="location"
								onkeypress="clearForm()" id="location"><br> <br>
							<p id="errorMsg21" style="color: red;"></p>
						</div>



						<div class="col-sm-4" align="left">
							Experience: <input type=text name="experience"
								onkeypress="clearForm()" id="experience"><br> <br>
							<p id="errorMsg22" style="color: red;"></p>
						</div>

						<div class="row">
							<div class="col-sm-6">
								Current CTC: <input type=text name="currentCTC"
									onkeypress="clearForm()" id="currentCTC"><br> <br>
								<p id="errorMsg23" style="color: red;"></p>
							</div>

							<div class="col-sm-6">
								Excepted CTC: <input type=text name="expectedCTC"
									onkeypress="clearForm()" id="expectedCTC"><br>
								<p id="errorMsg24" style="color: red;"></p>
							</div>
						</div>
					</div>
					</div>
 --%>					
 <p styple="padding-left :0cm;">__________________________________________________________________________________________________________________________________________________</p>
<h2>Bank Details</h2>
<br>
<div class="row">
<div class="col-sm-4" align="left">
Bank Name:<font color="red">*</font>
&nbsp;&nbsp;&nbsp;<input type="text" name="bankName"
onkeypress="clearForm()" id="bankName"><br> <br>
<p id="errorMsg27" style="color: red;"></p>
</div>
<div class="col-sm-4" align="left">
Bank Accno:<font color="red">*</font> <input type="text"
name="bankAccNo" onkeypress="clearForm()"
id="bankAccNo" maxlength="12"
title="Only 12 digits are allowed">
<p id="errorMsg28" style="color: red;"></p>
</div>
<div class="col-sm-4" align="left">
IFCS code:<font color="red">*</font> <input type=text
name="ifscCode" onkeypress="clearForm()"
id="ifscCode" maxlength="10"
title="Only 10 digits are allowed">
<p id="errorMsg29" style="color: red;"></p>
</div>

</div>
 
 
				<input type=submit onclick="return registrationValidation()"
					value="submit" class="button">
					</form>
					<br><br><br>
			</center>
		</div>
	</div>
</body>
</html>
