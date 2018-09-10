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
<script type="text/javascript">
function registrationValidation()
{
	var fName=document.getElementById("firstName").value;
	var lName=document.getElementById("lastName").value;
	var faName=document.getElementById("fatherName").value;
	var gender=document.getElementById("gender").value;
	var dob=document.getElementById("dob").value;
	var email=document.getElementById("emailId").value;
	var mobileid=document.getElementById("mobileNumber").value;
	var adhar=document.getElementById("aadharNo").value;
	var permanentadd=document.getElementById("permanentAddress").value;
	var localadd=document.getElementById("localAddress").value;
	var schoolname=document.getElementById("schoolName").value;
	var tenththpassedout=document.getElementById("tenthPassedOut").value;
	var collegename=document.getElementById("intermediateCollegeName").value;
	var interpassedout=document.getElementById("interPassedOut").value;
	var graduation=document.getElementById("graduationDetails").value;
	var graduationpassedout=document.getElementById("graduationPassedOut").value;
	var branch=document.getElementById("branch").value;
	
	var companyid=document.getElementById("companyName").value;
	var roleid=document.getElementById("role").value;
	var notice=document.getElementById("noticePeriod").value;
	var location=document.getElementById("location").value;
	var experience=document.getElementById("experience").value;
	var currentctc=document.getElementById("currentCTC").value;
	var expectedctc=document.getElementById("expectedCTC").value;
	if(fName==null||fName=="")
		{
		document.getElementById("errorMsg").innerHTML="please enter firstName";
		return false;
		}
	else{
		return true;
	}
	else if(lName==null||lName=="")
		{
		document.getElementById("errorMsg1").innerHTML="please enter lastName";
		return false;
		}
	
	
	else if(faName==null||faName=="")
	{
	document.getElementById("errorMsg2").innerHTML="please enter FatherName";
	return false;
	}
	
	
	
	else if(gender==null||gender=="")
		{
		document.getElementById("errorMsg3").innerHTML="please select the gender";
		return false;
		}
	
	else if(dob==null||dob=="")
	{
	document.getElementById("errorMsg4").innerHTML="please select the gender";
	return false;
	}	
	
	else if(email==null||email=="")
		{
		document.getElementById("errorMsg5").innerHTML="please enter emailId";
		return false;
		}
	else if(mobileid==null||mobileid=="")
	{
	document.getElementById("errorMsg6").innerHTML="please enter mobile Number";
	return false;
	}
	else if(adhar==null||adhar=="")
	{
	document.getElementById("errorMsg7").innerHTML="please enter Adharnumber";
	return false;
	}
	
	
	else if(permanentadd==null||permanentadd=="")
	{
	document.getElementById("errorMsg8").innerHTML="please enter permanentaddress";
	return false;
	}
	
	else if(localadd==null||localadd=="")
	{
	document.getElementById("errorMsg9").innerHTML="please enter localaddress";
	return false;
	}
	
	else if(schoolname==null||schoolname=="")
	{
	document.getElementById("errorMsg10").innerHTML="please enter schoolname";
	return false;
	}
	
	else if(tenthpassedout==null||tenthpassedout=="")
	{
	document.getElementById("errorMsg11").innerHTML="please enter year of passing";
	return false;
	}
	
	else if(collegename==null||collegename=="")
	{
	document.getElementById("errorMsg12").innerHTML="please enter your collage name";
	return false;
	}
	
	else if(interpassedout==null||interpassedout=="")
	{
	document.getElementById("errorMsg13").innerHTML="please enter year of passing";
	return false;
	}
	
	else if(graduation==null||graduation=="None")
	{
	document.getElementById("errorMsg14").innerHTML="please enter your graduation details";
	return false;
	}
	
	else if(graduationpassedout==null||graduationpassedout=="")
	{
	document.getElementById("errorMsg15").innerHTML="please enter year of passing";
	return false;
	}
	
	else if(branch==null||branch=="None")
	{
	document.getElementById("errorMsg16").innerHTML="please enter lastName";
	return false;
	}
	
	else if(university==null||university=="")
	{
	document.getElementById("errorMsg17").innerHTML="please enter university name";
	return false;
	}
	
	
	else if(companyid==null||companyid=="")
	{
	document.getElementById("errorMsg18").innerHTML="please enter your companyid";
	return false;
	}
	else if(roleid==null||roleid=="")
	{
	document.getElementById("errorMsg19").innerHTML="please enter your role";
	return false;
	}
	
	else if(notice==null||notice=="None")
	{
	document.getElementById("errorMsg20").innerHTML="please enter your notice period";
	return false;
	}
	
	else if(location==null||location=="")
	{
	document.getElementById("errorMsg21").innerHTML="please enter your location";
	return false;
	}
	
	else if(experience==null||experience=="")
	{
	document.getElementById("errorMsg22").innerHTML="please enter your experience";
	return false;
	}
	
	else if(currentctc==null||currentctc=="")
	{
	document.getElementById("errorMsg23").innerHTML="please enter your current ctc";
	return false;
	}
	
	else if(expectedctc==null||expecteddctc=="")
	{
	document.getElementById("errorMsg24").innerHTML="please enter your expected ctc";
	return false;
	}
	
	
	else
		return true;
	}
	
	function clearForm()
	{
		document.getElementById("errorMsg").innerHTML="";
		document.getElementById("errorMsg1").innerHTML=""; 
		document.getElementById("errorMsg2").innerHTML="";
		document.getElementById("errorMsg3").innerHTML="";
		document.getElementById("errorMsg4").innerHTML="";
		document.getElementById("errorMsg5").innerHTML="";
		document.getElementById("errorMsg6").innerHTML="";
		document.getElementById("errorMsg7").innerHTML="";
		document.getElementById("errorMsg8").innerHTML="";
		document.getElementById("errorMsg9").innerHTML="";
		document.getElementById("errorMsg10").innerHTML=""; 
		document.getElementById("errorMsg11").innerHTML="";
		document.getElementById("errorMsg12").innerHTML="";
		document.getElementById("errorMsg13").innerHTML="";
		document.getElementById("errorMsg14").innerHTML="";
		document.getElementById("errorMsg15").innerHTML="";
		document.getElementById("errorMsg16").innerHTML="";
		document.getElementById("errorMsg17").innerHTML="";
		document.getElementById("errorMsg18").innerHTML=""; 
		document.getElementById("errorMsg19").innerHTML="";
		document.getElementById("errorMsg20").innerHTML="";
		document.getElementById("errorMsg21").innerHTML="";
		document.getElementById("errorMsg22").innerHTML="";
		document.getElementById("errorMsg23").innerHTML="";
		document.getElementById("errorMsg24").innerHTML="";
	}
</script>
	







</head>
<body>
	<div id="nav">
		<h1>
			<a href="index.jsp">Dhatsol IT Solutions</a>
		</h1>

		<nav>
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="User.jsp">Login</a></li>
		


			<div class="dropdown">
				<button class="dropbtn">
					Employee <i class="fa fa-caret-down" id="active"></i>
				</button>
				<div class="dropdown-content">
					<a href="EmployeeRegistration.jsp">New Registration</a> <a href="#">Response
						Approved</a>

				</div>
			</div>

			<li><a href="Aboutus.html">about us</a></li>
		</ul>
	</div>

	</div>	
	<div id="#mainform">
		<br> <br>

		<div class="container" style="background-image:url(k2.jpeg)";>
			<center>
				<h1 style="color:red";"padding:50%"; "margin-top:50%"; "height:20%";>
					
				</h1>
				<hr>
				<form action="RegistrationServlet" method="post">
				<div class="panel panel-default">
					<h2>Personal Information</h2>
					<br> <br>
					<table>
						<tr>
							<td>*First Name:</td>
							<td><input type=text onkeypress="clearForm()" id="firstName"
								name="firstName"><br> <br></td>
								<td><p id="errorMsg" style=color:red;></p></td> 
								
							
						</tr>
						<tr>
						<td>*Last Name:</td>
							<td><input type="text" onkeypress="clearForm()" id="lastName"
								name="lastName"><br> <br></td>
								<td><p id="errorMsg1" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>*Father Name:</td>
							<td><input type="text" onkeypress="clearForm()" id="fatherName" name="fatherName"><br> <br></td>
							<td><p id="errorMsg2" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>*Gender:</td>
							<td><input type="radio" name="gender" value="Male" 
								onkeypress="clearForm()" id="gender">Male <input
								type="radio" name="gender" value="Female">Female <input
								type="radio" name="gender" value="Others">Others</td>
							<td><p2 id="errorMsg3" style=color:red;></p2><br> <br></td>
						</tr>
						<tr>
							<td>*Date Of Birth:</td>
							<td><input type="date" name="dob" onkeypress="clearForm()" id="dob"><br> <br></td>
							<td><p id="errorMsg4" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>*Email Id:</td>
							<td><input type=text onkeypress="clearForm()" id="emailId"
								name="emailid"><br> <br></td>
								<td><p id="errorMsg5" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>*Mobile No:</td>
							<td><input type=text onkeypress="clearForm()" id="mobileNumber"
								name="mobileNumber" text-align:right;><br> <br></td>
								<td><p id="errorMsg6" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>*Aadhar Number:</td>
							<td><input type=text name="aadharNo"onkeypress="clearForm()" id="aadharNo"><br> <br></td>
							<td><p id="errorMsg7" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>*Permanent Address:</td>
							<td><textarea rows="2" onkeypress="clearForm()" id="permanentAddress" name="permanentAddress">
</textarea><br> <br></td>
<td><p id="errorMsg8" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>*Local Address:</td>
							<td><textarea rows="2" onkeypress="clearForm()" id="localAddress" name="localAddress">
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
							<td>*10th School Name:</td>
							<td><input type=text name="schoolName" onkeypress="clearForm()" id="schoolName"><br> <br></td>
							<td><p id="errorMsg10" style=color:red;></p></td> 
							
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*10Th Passedout:</td>
							
							<td><input type=text name="tenthPassedOut" onkeypress="clearForm()" id="tenthPassedOut"></td>
							<td><p id="errorMsg11" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>*Intermediate College Name:</td>
							<td><input type=text name="intermediateCollegeName"onkeypress="clearForm()" id="intermediateCollegeName"> </select><br>
								<br></td>
								<td><p id="errorMsg12" style=color:red;></p></td> 
								
							<td>&nbsp;&nbsp;&nbsp;&nbsp;*12Th Passedout:</td>
							<td><input type=text name="interPassedOut" onkeypress="clearForm()" id="interPassedOut"></td>
							<td><p id="errorMsg13" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>*Graduation Details:</td>
							<td><select name="graduationDetails" onkeypress="clearForm()" id="graduationDetails">
									<option value="None">Select Branch</option>
									<option value="B.Tech">B.TECH</option>
									<option value="M.Tech">M.TECH</option>
									<option value="MBA">MBA</option>
									<option value="PG">PG</option>
									
							</select><br> <br></td>
							<td><p id="errorMsg14" style=color:red;></p></td> 
							
							<td>&nbsp;&nbsp;&nbsp;&nbsp;*Graduation Passedout:</td>
							<td><input type=text name="graduationPassedOut" onkeypress="clearForm()" id="graduationPassedOut"></td>
							<td><p id="errorMsg15" style=color:red;></p></td> 
							
						</tr>
						<tr>
								<td>*Branch:</td>
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
							
							
							<td>&nbsp;&nbsp;&nbsp;&nbsp;*University:</td>
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
							<td><input type=text name="role" onkeypress="clearForm()"
								id="role"><br><br></td>
								<td><p id="errorMsg19" style=color:red;></p></td> 
					
						</tr>
						<tr>
							<td>Notice Period:</td>
							<td><select name="noticePeriod" onkeypress="clearForm()" id="noticePeriod">
									<option value="None">Enter notice period</option>
									<option value="10days">10days</option>
									<option value="15days">15days</option>
									<option value="1month">1month</option>
									<option value="20days">20days</option>
									<option value="2months">2months</option>

							</select><br> <br></td>
							<td><p id="errorMsg20" style=color:red;></p></td> 
							
						</tr>
						<tr>
							<td>Location:</td>
							<td><input type=text name="location" onkeypress="clearForm()" id="location"><br> <br></td>
							<td><p id="errorMsg21" style=color:red;></p></td> 
							
							<!-- <center style="text-align:top"></center> -->
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
					<br>
					<center>
						<input type=submit onclick="return registrationValidation()"
							value="submit" class="sowmya">

					</center>
				</div>
				</form>
				
</body>
</html>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


