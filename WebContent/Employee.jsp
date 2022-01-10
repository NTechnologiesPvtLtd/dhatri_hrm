<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<%@page import="com.hrm.bean.EmployeeBean"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@page import="com.hrm.services.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dhatsol</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="employeeValidation.js"></script>
<script type="text/javascript">
function showcommentform() {
	var data = "EmployeeId:<input type='text' name='employeeId'><br><br>";

		document.getElementById('location').innerHTML = data;
	}

function showcommentform1() 
	{
		document.getElementById('location').innerHTML = "";
	}
	var counter = 1;
	var limit = 3;
	function addDetails(divName){
		if(counter == limit){
			alert("You have reached the limit of adding 3 Graduation Details.");
		}else{
			var newdiv = document.createElement('div');
			newdiv.innerHTML = "<div class='row'><div class='col-sm-3' align='left'>Graduation Details:"+counter+"<font color='red'>*</font> <select name='graduationDetails' onclick='clearForm()' id='graduationDetails'><option value='None'>Select Course</option><option value='B.Tech'>B.TECH</option><option value='M.Tech'>M.TECH</option><option value='MBA'>MBA</option><option value='PG'>PG</option></select><br> <br><span id='Graduationdetails' class='text-danger'> </span></div><div class='col-sm-3' align='left'>Passedout:<font color='red'>*</font> <input type=text name='graduationPassedOut' onclick='clearForm()'	id='graduationPassedOut' maxlength='4' title='Only 4 digits are allowed'><span id='Graduationpassedout' class='text-danger'> </span></div><div class='col-sm-3' align='left'>Branch:<font color='red'>*</font> <select name='branch' onclick='clearForm()' id='branch'><option value='None'>Enter Your Branch</option><option value='ECE'>ECE</option><option value='EEE'>EEE</option><option value='CSE'>CSE</option><option value='Civil'>CIVIL</option><option value='Mechanical'>MECHANICAL</option><option value='Bcom'>Bcom</option></select><span id='Branch' class='text-danger'> </span></div><div class='col-sm-3' align='left'>	University:<font color='red'>*</font> <input type=text name='university' onclick='clearForm()' id='university'><span id='University' class='text-danger'> </span></div></div>";
			
			document.getElementById(divName).appendChild(newdiv);
			counter++;
		}
		
	}
</script>

<style type="text/css">
body {
	background-image:url("https://www.incimages.com/uploaded_files/image/1920x1080/getty_810689104_381934.jpg");
	background-repeat:no-repeat;
	background-size:cover;
	background-attachment:fixed;
}
div {text-align: center;}
</style>
</head>
<body>

<div class="container-fluid">
	<nav class="navbar navbar-expand-sm bg-dark fixed-top navbar-dark">
	
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp"><strong>Dhatsol It Solutions</strong></a>
		</div>
  		<ul class="navbar-nav ml-auto">
    		<li class="nav-item active">
      			<a class="nav-link"  href="Home.jsp"><strong>Home</strong></a>
    		</li>
    		<li class="dropdown nav-item active" ><a class=" nav-link dropdown-toggle" data-toggle="dropdown" href="#"><strong>Employee</strong> <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="Employee.jsp">New Registration</a></li>
					<li><a href="#">Response Approved</a></li>
					<li><a href="EmployeeViewDirection.jsp">Search Employee</a></li>
				</ul>
			</li>
   			<li class="nav-item active"><a class="nav-link" href="Login.jsp"><strong>Login</strong></a></li>
    		<li class="nav-item active"><a class="nav-link" href="Aboutus.jsp"><strong>About us</strong></a></li>
  		</ul>
  	
	</nav>
</div>
<br>
<br>
<br>

<div id="#mainform">
	<div class="container" style="background-image:url(color.jpg)  ;">
			<h1 style="color: red padding:50% margin-top:50% height:20%;"></h1>
				<hr>
				<label for="employee">Employee: </label> 
				<input type="radio" id="employee1" name="employee"  value="NewEmployee" onclick="showcommentform1();clearForm();" >NewEmployee 
				<input type="radio" id="employee2" name="employee" value="ExistingEmployee" onclick="showcommentform();clearForm();">ExistingEmployee<br>
				<span id="Employee" class="text-danger"> </span>
				
			<div id="accordion" role="tablist">
				<form action="RegistrationServlet" method="post" onsubmit="return registrationValidation()">
					<div class="card" style="background-color:transparent; color:blue; ">
						<div class="card-header" role="tab" id="headingOne">
							<h5 class="mb-0" >
							<a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" style="color:red;"> PERSONAL DETAILS </a>
							</h5>
						</div>

						<div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne">
							<div class="card-body">
							<div class="container">
      						<br>
								<div id="location"></div>

								<div class="row">
									<div class="col-sm-4" align="left">First Name:<font color="red">*</font> 
										<input type=text onclick="clearForm()" id="firstName" name="firstName"><br>
										<br>
										<span id="Firstname" class="text-danger"> </span>
									</div>

									<div class="col-sm-4" align="left">Last Name:<font color="red">*</font>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="text" onclick="clearForm()" id="lastName" name="lastName"><br> <br>
										<span id="Lastname" class="text-danger"> </span>
									</div>


									<div class="col-sm-4" align="left">Father Name:<font color="red">*</font> 
										<input type="text" onclick="clearForm()"id="fatherName" name="fatherName"><br>
										<br>
										<span id="Fathername" class="text-danger"> </span>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4" align="left">Gender:<font color="red">*</font> 
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="radio" name="gender" value="Male" onclick="clearForm()"id="male">Male 
										<input type="radio" name="gender" value="Female" onclick="clearForm()"id="female">Female 
										<input type="radio" name="gender" value="Others" onclick="clearForm()"id="others">Others
										<span id="Gender" class="text-danger"> </span>
										<br> <br>
									</div>
									
									<div class="col-sm-4" align="left">Date Of Birth:<font color="red">*</font>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="date" name="dob" id="dob" onclick="clearForm()">
										<span id="DOB" class="text-danger"> </span>
									</div>

									<div class="col-sm-4" align="left">Email Id:<font color="red">*</font>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type=text onclick="clearForm()"id="emailId" name="emailId"><br>
										<br>
										<span id="Emailid" class="text-danger"> </span>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4" align="left">Mobile No:<font color="red">*</font> &nbsp;
										<input type=text onclick="clearForm()"id="mobileNumber" name="mobileNumber" text-align="right" pattern="[0-9]{10}" title="Mobile number must be 10 digits" placeholder="Mobile number"><br> <br>
										<span id="mobileno" class="text-danger"> </span>
									</div>
									<div class="col-sm-8" align="left">Alternate Mobile No:<font color="red">*</font> &nbsp;
										<input type=text onclick="clearForm()"id="alternatemobileNumber" name="alternatemobileNumber" text-align=right pattern="[0-9]{10}" title="Alternate Mobile number must be 10 digits" placeholder="Mobile number" ><br> <br>
										<span id="amobileno" class="text-danger"> </span>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-4" align="left">Aadhar Number:<font color="red">*</font> 
										<input type=text name="aadharNo" onclick="clearForm()"id="aadharNo" pattern="[0-9]{12}" title="Aadhar Card Number must be 12 digits" placeholder="Enter AadharCardNumber" >
										<span id="Aadharno" class="text-danger"> </span>
									</div>
									<div class="col-sm-4" align="left">PAN Number:<font color="red">*</font> 
										<input type=text name="panNo" onclick="clearForm()"id="panNo" pattern="{10}" title="PAN Card Number must be 10 digits" placeholder="Enter PANCardNumber" >
										<span id="Panno" class="text-danger"> </span>
									</div>
									<div class="col-sm-4" align="left">Passport Number:<font color="red">*</font> 
										<input type=text name="passportNo" onclick="clearForm()"id="passportNo" pattern="{8}" title="Passport Number must be 8 digits" placeholder="Enter PassportNumber" >
										<span id="Passportno" class="text-danger"> </span>
									</div>
								</div>
								<br>

								<div class="row">
									<div class="col-sm-6" align="left">Permanent Address:<font color="red">*</font>
										<textarea onclick="clearForm()"id="permanentAddress" name="permanentAddress"></textarea>
										<br><br>
										<span id="Permanentadd" class="text-danger"> </span>
									</div>

									<div class="col-sm-6" align="left">Local Address:<font color="red">*</font>
										<textarea onclick="clearForm()"id="localAddress" name="localAddress"></textarea>
										<br> <br>
										<span id="Localadd" class="text-danger"> </span>
									</div>
								</div>
							</div>
							</div>
						</div>
					</div>
					
					<div class="card" style="background-color:transparent; color:blue;">
						<div class="card-header" role="tab" id="headingTwo">
							<h5 class="mb-0">
        					<a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo" style="color:red;"> EDUCATIONAL DETAILS</a></h5>
    					</div>
    					<div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="card-body">
								<div class="container">
				
									<br>
									<div class="row">
										<div class="col-sm-6" align="left">Board Of Secondary Education:<font color="red">*</font>
											&nbsp;&nbsp;&nbsp;
											<input type=text name="schoolName" onclick="clearForm()"id="schoolName"><br> <br>
											<span id="Schoolname" class="text-danger"> </span>
										</div>
										<div class="col-sm-6" align="left">Passed out:<font color="red">*</font> 
											<input type=text name="tenthPassedOut" onclick="clearForm()"id="tenthPassedOut" maxlength="4" title="Only 4 digits are allowed">
											<span id="Tenthpassedout" class="text-danger"> </span>
										</div>
									</div>
					
									<div class="row">
										<div class="col-sm-6" align="left">Board Of Intermediate Education:<font color="red">*</font> 
											<input type=text name="intermediateCollegeName" onclick="clearForm()"id="intermediateCollegeName"><br>
											<br>
											<span id="Intercollegename" class="text-danger"> </span>
										</div>

										<div class="col-sm-6" align="left">Passed out:<font color="red">*</font> 
											<input type=text name="interPassedOut" onclick="clearForm()"id="interPassedOut" maxlength="4" title="Only 4 digits are allowed">
											<span id="Interpassedout" class="text-danger"> </span>
										</div>
									</div>
					                <div class='row'><div class='col-sm-3' align='left'>Graduation Details:
					                <font color='red'>*</font> 
					                <select name='graduationDetails' onclick='clearForm()' id='graduationDetails'>
					                <option value='None'>Select Course</option>
					                <option value='B.Tech'>B.TECH</option>
					                <option value='M.Tech'>M.TECH</option>
					                <option value='MBA'>MBA</option>
					                <option value='PG'>PG</option>
					                </select><br> <br>
					                <span id="Graduationdetails" class='text-danger'> 
					                </span>
					                </div>
					                <div class='col-sm-3' align='left'>Passed out:<font color='red'>*</font> 
					                <input type=text name='graduationPassedOut' onclick='clearForm()'	id='graduationPassedOut' maxlength='4' title='Only 4 digits are allowed'>
					                <span id='Graduationpassedout' class='text-danger'> </span>
					                </div>
					                <div class='col-sm-3' align='left'>Branch:<font color='red'>*</font> 
					                <select name='branch' onclick='clearForm()' id='branch'>
					                <option value='None'>Enter Your Branch</option>
					                <option value='ECE'>ECE</option>
					                <option value='EEE'>EEE</option>
					                <option value='CSE'>CSE</option>
					                <option value='Civil'>CIVIL</option>
					                <option value='Mechanical'>MECHANICAL</option>
					                <option value='Bcom'>B.com</option></select>
					                <span id='Branch' class='text-danger'> </span>
					                </div>
					                <div class='col-sm-3' align='left'>University:<font color='red'>*</font> 
					                <input type=text name='university' onclick='clearForm()' id='university'>
					                <span id='University' class='text-danger'> </span>
					                </div>
					                </div>
									<div class="row">
										<div class="col-sm-12" align="center">
											<div id="dynamicInput"></div>
												<input type="button" value="Graduation Details" id="Graduation Details" name="graduate" onclick="addDetails('dynamicInput')">
											</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="card" style="background-color:transparent; color:blue;">
						<div class="card-header" role="tab" id="headingThree">
							<h5 class="mb-0">
        					<a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree" style="color:red;"> COMPANY DETAILS</a></h5>
    					</div>
    					<div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
							<div class="card-body">
								<div class="container">
									<br>
									<div class="row">
										<div class="col-sm-12" align="center">
											<div id="dynamicInput1">
											<div class='row'>
											 <div class='col-sm-4' align='left'>Company Name: 
											 <input type=text name='companyName' onclick='clearForm()' id='companyName'>
											 <br> <br><span id='Companyname' class='text-danger'> </span>
											 </div>	
											 <div class='col-sm-4' align='left'>Role: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											 <select name='roleDetails' id='role' onchange="show();" onclick="clearForm();">	
											   <option value='None'>Select role</option>
											   <option value='associative engineer'>Associative Engineer</option>	
											   <option value='software engineer'>Software Engineer</option>
											   <option value='senior software engineer'>Senior	Software Engineer</option>
											   <option value='lead analyst'>Lead Analyst</option>
											   <option value='ProjectManager' onSelect="show()" >Project Manager</option>
											   <option value='HR Manager'>HR Manager</option>
											   <option value='Admin'>Admin</option>
											   </select>
											   <span id='Role' class='text-danger'> </span>
											   </div>	
											   <div class='col-sm-4' align='left'>Notice Period:
											    <input type=text name='noticePeriod'	onclick="clearForm()" id='noticePeriod'><br> <br>
											    <span id='Noticeperiod' class='text-danger'> </span>
											    </div></div>
											    <div class='row'><div class='col-sm-4' align='left'>Location: 
											    <input type=text name='location' onclick="clearForm()" id='location1'><br> <br>
											    <span id='Location1' class='text-danger'> </span> 
											    </div>
											    <div class='col-sm-4' align='left'>Experience: <input type=text name='experience'	onclick="clearForm()" id='experience'><br> <br>
											    <span id='Experience' class='text-danger'> </span></div>	
											    <div class='col-sm-4' align='left'>Current CTC: <input type=text name='currentCTC' onclick="clearForm()" id='currentCTC'><br> 
											    <br><span id='Currentctc' class='text-danger'> </span>
											    </div>
											    <div class='col-sm-4' align='left'>Expected CTC: <input type=text name='expectedCTC' onclick="clearForm()" id='expectedCTC'><br> 
											    <br><span id='Expectedctc' class='text-danger'> </span>
											    </div>
											    </div>
											    </div>
												
												<%
												
													EmployeeBean employeeBean = new EmployeeBean();
													HRMService service = new HRMServicesImplementation();
													List<EmployeeBean> managerslist = service.searchManager("ProjectManager");
												%>
												 <div class="col-sm-4" id="manager" align="left"> Manager:
												 <select name="empmanager" id="empmanager"> 
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
									</div><br><br>
					
									<div class="row">
										<div class="col-sm-12" align="left"> Upload Resume:
											<div name="UploadResume" class="btn btn-default"><input type="file" name="file"/></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="card" style="background-color:transparent; color:blue;">
						<div class="card-header" role="tab" id="headingfour"><h5 class="mb-0" >
							<a class="collapsed" data-toggle="collapse" href="#collapsefour"aria-expanded="false" aria-controls="collapsefour" style="color:red;"> BANKDETAILS</a></h5>
						</div>
						<div id="collapsefour" class="collapse" role="tabpanel" aria-labelledby="headingfour">
							<div class="card-body">
								<div class="container">
								<br>
									<div class="row">
										<div class="col-sm-4" align="left">Bank Name:<font color="red">*</font>&nbsp;&nbsp;&nbsp;
											<input type="text" name="bankName" onclick="clearForm()"id="bankName"><br> <br>
											<span id="Bankname" class="text-danger"> </span>
										</div>
										<div class="col-sm-4" align="left"> Bank Accno:<font color="red">*</font> 
											<input type="text" name="bankAccNo" onclick="clearForm()"id="bankAccNo" maxlength="12" title="Only 12 digits are allowed">
											<span id="Bankaccno" class="text-danger"> </span>
										</div>
										<div class="col-sm-4" align="left">IFCS code:<font color="red">*</font> 
											<input type=text name="ifscCode" onclick="clearForm()"id="ifscCode" maxlength="10" title="Only 10 digits are allowed">
											<span id="Ifsccode" class="text-danger"> </span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
 					<input type=submit onclick="return registrationValidation()" class="btn btn-success" value="submit" class="button">
 					<input	type="reset" class="btn btn-primary" id="resetId" name="Clear">
				</form>
				<br><br><br>
			</div>
	</div>
</div>
</body>
</html>