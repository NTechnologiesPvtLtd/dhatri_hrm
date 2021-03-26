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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function showcommentform() {
		var data = "<strong>EmployeeId</strong>:- <input type='text' name='employeeId' ><br><br>";

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
			newdiv.innerHTML = "<div class='row'><div class='col-sm-3' align='left'>Graduation Details:"+counter+"<font color='red'>*</font> <select name='graduationDetails' onkeypress='clearForm()' id='graduationDetails'><option value='None'>Select Course</option><option value='B.Tech'>B.TECH</option><option value='M.Tech'>M.TECH</option><option value='MBA'>MBA</option><option value='PG'>PG</option></select><br> <br><p id='errorMsg14' style='color: red;'></p></div><div class='col-sm-3' align='left'>Passedout:<font color='red'>*</font> <input type=text name='graduationPassedOut' onkeypress='clearForm()'	id='graduationPassedOut' maxlength='4' title='Only 4 digits are allowed'><p id='errorMsg15' style='color: red;'></p></div><br><div class='col-sm-3' align='left'>Branch:<font color='red'>*</font> <select name='branch' onkeypress='clearForm()' id='branch'><option value='None'>Enter Your Branch</option><option value='ECE'>ECE</option><option value='EEE'>EEE</option><option value='CSE'>CSE</option><option value='Civil'>CIVIL</option><option value='Mechanical'>MECHANICAL</option><option value='Bcom'>Bcom</option></select><p id='errorMsg16' style='color: red;''></p></div><div class='col-sm-3' align='left'>	University:<font color='red'>*</font> <input type=text name='university' onkeypress='clearForm()' id='university'><p id='errorMsg17' style='color: red;'></p></div></div>";
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
			newdiv1.innerHTML = "<div class='row'><div class='col-sm-4' align='left'>Company Name:"+counter1+" <input type=text name='companyName' onkeypress='clearForm()' id='companyName'><br> <br><p id='errorMsg18' style='color: red;'></p></div>	<div class='col-sm-4' align='left'>	Role: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name='roleDetails' onkeypress='clearForm()' id='roleDetails'>	<option value='None'>Select role</option><option value='associative engineer'>Associative Engineer</option>	<option value='software engineer'>Software Engineer</option><option value='senior software engineer'>Senior	Software Engineer</option><option value='lead analyst'>Lead Analyst</option><option value='Project Manager'>Project Manager</option><option value='HR Manager'>HR Manager</option><option value='Admin'>Admin</option></select><p id='errorMsg19' style='color: red;'></p></div><div class='col-sm-4' align='left'>Manager: &nbsp;&nbsp;&nbsp;&nbsp;<select name='empmanager'	id='empmanager'><option value='default'>default</option></select></div></div><div class='row'><div class='col-sm-4' align='left'>Location: <input type=text name='location' onkeypress='clearForm()' id='location'><br> <br><p id='errorMsg21' style='color: red;'></p></div><div class='col-sm-4' align='left'>Experience: <input type=text name='experience'	onkeypress='clearForm()' id='experience'><br> <br><p id='errorMsg22' style='color: red;'></p></div>	<div class='col-sm-4' align='left'>Current CTC: <input type=text name='currentCTC' onkeypress='clearForm()' id='currentCTC'><br> <br><p id='errorMsg23' style='color: red;'></p></div></div>	";
			document.getElementById(divName1).appendChild(newdiv1);
			counter1++;
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


</style>
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
		<div class="container" style="background-image:Transparent";>

			<center>
				<h1 style="color: red padding:50% margin-top:50% height:20%";></h1>
				<hr>
				<label for="employee">Employee: </label> <input type="radio"
					id="employee" name="employee" value="NewEmployee"
					onclick="showcommentform1()">NewEmployee <input type="radio"
					id="employee" name="employee" value="ExistingEmployee"
					onclick="showcommentform()">ExistingEmployee<br>

				<p2 id="errorMsg3" style=color:red;></p2>

<div id="accordion" role="tablist">
<form action="RegistrationServlet" method="post">
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
				<br>
					
					<div class="row">
						<div class="col">
							<label for="firstname" class="font-weight-bold"> First Name <span class="red">*</span></label>:-
							<input type="text" name="firstname" class="form-control" id="firstname" autocomplete="off" placeholder="First Name">
							<span id="Firstname" class="text-danger"> </span>
						</div>
 					</div>
					<div class="row">
						<div class="col">
							<label for="lastname" class="font-weight-bold"> Last Name <span class="red">*</span></label> :-
							<input type="text" name="lastname" class="form-control " id="lastname" autocomplete="off" placeholder="Last Name">
							<span id="Lastname" class="text-danger"> </span>
						</div>
 					</div>
					<div class="row">
						<div class="col">
							<label for="fathername" class="font-weight-bold"> Father Name <span class="red">*</span></label> :-
							<input type="text" name="fathername" class="form-control " id="fathername" autocomplete="off" placeholder="Father Name">
							<span id="Fathername" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="gender" class="font-weight-bold"> Gender <span class="red">*</span></label> :-
							<input type="radio" name="gender" id="gender" value=male> Male 
							<input type="radio" name="gender" id="gender" value=female> Female
							<input type="radio" name="gender" id="gender" value=other> Other
							<span id="Gender" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="dob" class="font-weight-bold"> Date Of Birth <span class="red">*</span></label> :-
							<input type="date" name="dob" class="form-control" id="dob" autocomplete="off" >
							<span id="DOB" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="email" class="font-weight-bold"> Email ID <span class="red">*</span></label> :-
							<input type="email" name="email" class="form-control" id="email" autocomplete="off" placeholder="abc@gmail.com">
							<span id="Email" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="mobileno" class="font-weight-bold"> Mobile Number <span class="red">*</span></label> :-
							<select>  
							<option>+91</option>  
							<option>+00</option>
							</select>
							<input type="number" name="mobileno" class="form-control" id="mobileno" autocomplete="off" placeholder="0123456789">
							<span id="Mobileno" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="alternatemobileno" class="font-weight-bold"> Alternate Mobile Number</label> :-
							<select>  
							<option>+91</option>  
							<option>+00</option>
							</select> 
							<input type="number" name="alternatemobileno" class="form-control" id="alternatemobileno" autocomplete="off" placeholder="0123456789">
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="aadharno" class="font-weight-bold"> Aadhar Number <span class="red">*</span></label>  :-
							<input type="number" name="aadharno" class="form-control" id="aadharno" autocomplete="off" placeholder="0123 4567 8910">
							<span id="Aadharno" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="panno" class="font-weight-bold"> Pan Number <span class="red">*</span></label>  :-
							<input type="text" name="panno" class="form-control" id="panno" autocomplete="off" placeholder="Pan Number">
							<span id="Panno" class="text-danger"> </span> 
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="passportno" class="font-weight-bold"> Passport Number <span class="red">*</span></label> :-
							<input type="text" name="passportno" class="form-control" id="passportno" autocomplete="off" placeholder="Passport Number">
							<span id="Passportno" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="permanentaddress" class="font-weight-bold"> Permanent Address <span class="red">*</span></label> :-
							<textarea cols="50" rows="5"  class="permanentaddress" id=permanentaddress name=permanentaddress>  </textarea>
							<span id="Permanentaddress" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="localaddress" class="font-weight-bold" > Local Address</label> :-
							<textarea cols="50" rows="5" class="localaddress" id=localaddress name=localaddress>  </textarea>
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
        			<div class="row">
						<div class="col">
							<label for="schoolname" class="font-weight-bold"> School Name <span class="red">*</span></label> :-
							<input type="text" name="schoolname" class="form-control" id="schoolname" autocomplete="off" placeholder="School Name" >
							<span id="Schoolname" class="text-danger"> </span>
						</div>
	 				</div>
 					<div class="row">
						<div class="col">
							<label for="tenthpassedout" class="font-weight-bold"> Tenth PassedOut <span class="red">*</span></label> :-
							<input type="number" name="tenthpassedout" class="form-control" id="tenthpassedout" autocomplete="off" placeholder="PassedOut Year">
							<span id="Tenthpassedout" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="intermediatecollegename" class="font-weight-bold"> Intermediate College Name <span class="red">*</span></label> :-
							<input type="text" name="intermediatecollegename" class="form-control" id="intermediatecollegename" autocomplete="off" placeholder="Intermediate College Name">
							<span id="Intermediatecollegename" class="text-danger"> </span>   
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="interpassedout" class="font-weight-bold"> Intermediate PassedOut <span class="red">*</span></label>:-
							<input type="number" name="interpassedout" class="form-control" id="interpassedout" autocomplete="off" placeholder="PassedOut Year">
							<span id="Interpassedout" class="text-danger"> </span>
						</div>
 					</div>
 					<br>
 					<br>
 					<div class="row">
						<div class="col">
							<div id="dynamicInput" class="font-weight-bold"> </div>
							<input type="button" value="Graduation Details" id="Graduation Details" name="graduate" onclick="addDetails('dynamicInput')">
						 
						
						</div>
 					</div>
 					<!-- <div class="row">
						<div class="col">
							<label for="graduationpassedOut" class="font-weight-bold"> Graduation PassedOut <span class="red">*</span></label> :-
							<input type="number" name="graduationpassedout" class="form-control" id="graduationpassedout" autocomplete="off" placeholder="PassedOut Year">
							<span id="Graduationpassedout" class="text-danger"> </span>
						</div>
	 				</div>
 					<div class="row">
						<div class="col">
							<label for="course" class="font-weight-bold"> Course <span class="red">*</span></label> :-
							<select name="course">  
								<option value="Course">Course</option>  
								<option value="B.Tech">B.Tech</option>
								<option value="MBA">MBA</option>  
								<option value="MCA">MCA</option>  
								<option value="M.Tech">M.Tech</option>  
							</select>
							<span id="Course" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="branch" class="font-weight-bold"> Branch <span class="red">*</span></label> :-
							<input type="text" name="branch" class="form-control" id="branch" autocomplete="off" placeholder="Branch">
							<span id="Branch" class="text-danger"> </span> 
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="universityname" class="font-weight-bold"> University Name <span class="red">*</span></label> :-
							<input type="text" name="universityname" class="form-control" id="universityname" autocomplete="off" placeholder="University Name">
							<span id="Universityname" class="text-danger"> </span> 
						</div>
 					</div> -->
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
						<!-- <div class="col">
							<label for="companyname" class="font-weight-bold"> Company Name <span class="red">*</span></label> :-
							<input type="text" name="companyname" class="form-control" id="companyname" autocomplete="off" placeholder="Company Name">
							<span id="Companyname" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="role" class="font-weight-bold"> Role <span class="red">*</span></label> :-
							<input type="text" name="role" class="form-control" id="role" autocomplete="off" placeholder="Role">
							<span id="Role" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="noticeperiod" class="font-weight-bold"> Notice Period <span class="red">*</span></label> :-
							<input type="number" name="noticeperiod" class="form-control" id="noticeperiod" autocomplete="off" placeholder="Notice Period">
							<span id="Noticeperiod" class="text-danger"> </span>  
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="location" class="font-weight-bold"> Location <span class="red">*</span></label>:-
							<input type="text" name="location" class="form-control" id="location" autocomplete="off" placeholder="Location">
							<span id="Location" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="experience" class="font-weight-bold"> Experience <span class="red">*</span></label> :-
							<input type="number" name="experience" class="form-control" id="experience" autocomplete="off" placeholder="Experience">
							<span id="Experience" class="text-danger"> </span>
						</div>
 					</div>
 					<div class="row">
						<div class="col">
							<label for="currentctc" class="font-weight-bold"> CurrentCTC <span class="red">*</span></label> :-
							<input type="number" name="currentctc" class="form-control" id="currentctc" autocomplete="off" placeholder="CurrentCTC">
							<span id="Currentctc" class="text-danger"> </span>
						</div>
 					</div>
 					
 					<div class="row">
						<div class="col">
							<label for="managername" class="font-weight-bold"> Manager Name <span class="red">*</span></label> :-
							<input type="text" name="managername" class="form-control" id="managername" autocomplete="off" placeholder="Manager Name">
							<span id="Managername" class="text-danger"> </span>
						</div>
 					</div> -->
 					<div class="row">
						<div class="col">
							<label for="expectedctc" class="font-weight-bold"> ExpectedCTC <span class="red">*</span></label> :-
							<input type="number" name="expectedctc" class="form-control" id="expectedctc" autocomplete="off" placeholder="ExpectedCTC">
							<span id="Expectedctc" class="text-danger"> </span> 
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
					<div class="row">
						<div class="col">
							<label for="bankname" class="font-weight-bold"> Bank Name <span class="red">*</span></label> :- 
							<input type="text" name="bankname" class="form-control" id="bankname" autocomplete="off" placeholder="Bank Name">
							<span id="Bankname" class="text-danger"> </span>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<label for="bankaccno" class="font-weight-bold"> Bank Acc Number <span class="red">*</span></label> :- 
							<input type="number" name="bankaccno" class="form-control" id="bankaccno" autocomplete="off" placeholder="Bank Acc Number">
							<span id="Bankaccno" class="text-danger"> </span>
						</div>
					</div>
					<div class="row">
						<div class="col">
	 						<label for="ifsccode" class="font-weight-bold"> IFSC Code <span class="red">*</span> </label> :- 
	 						<input type="text" name="ifsccode" class="form-control" id="ifsccode" autocomplete="off" placeholder="IFSC Code">
							<span id="Ifsccode" class="text-danger"> </span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col">
				<input 	type="submit" name="submit" value="submit" class="btn btn-success" 	autocomplete="off" > 
				<input	type="reset" class="btn btn-primary" id="resetId" name="Clear">
			</div>
		</div>
	</div>
</form>
</div>

</body>
</html>