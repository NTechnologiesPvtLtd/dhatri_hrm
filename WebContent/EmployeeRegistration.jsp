<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Dhatsol</title>

<link href="font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" media="all" href="stylesheets/animate.css" />


<script type="text/javascript">
function registrationValidation()
{
	var fName=document.getElementById("firstName").value;
	var lName=document.getElementById("lastName").value;
	var faName=document.getElementById("FatherName").value;

	
	var Gender=document.getElementById("gender").value;
	var bday=document.getElementById("dob").value;
	var emailid=document.getElementById("emailId").value;
	var mobileid=document.getElementById("mobileId").value;
	var Aadhar=document.getElementById("Adhar").value;
	var Paddr=document.getElementById("permanent").value;
	var Laddr=document.getElementById("laddr").value;
	var details=document.getElementById("tenthname").value;
	var passout=document.getElementById("tenthpassout").value;
	var graduation details=document.getElementById("intermediate").value;
	var Passout=document.getElementById("interpassout").value;
	var Graduation =document.getElementById("graduation").value;
	var graduation details=document.getElementById("graduationpassout").value;
	var branch=document.getElementById("Branch").value;
	var university=document.getElementById("University").value;
	var company=document.getElementById("companyId").value;
	var role=document.getElementById("roleId").value;
	var joining=document.getElementById("np").value;
	var location=document.getElementById("loc").value;
	var expirence=document.getElementById("exp").value;
	var select ctc=document.getElementById("cctc").value;
	var select ectc=document.getElementById("ectc").value;
	
	
	
	
	
	
	if(fname==null||fname=="")
		{
		document.getElementById("errorMsg").innerHTML="please enter firstName";
		return false;
		}
	else if(lname==null||lname=="")
		{
		document.getElementById("errorMsg1").innerHTML="please enter lastName";
		return false;
		}
	else if(faName==null||faName=="")
	{
	document.getElementById("errorMsg2").innerHTML="please enter father name";
	return false;
	}
	else if(Gender==null||Gender=="")
		{
		document.getElementById("errorMsg3").innerHTML="please select the gender";
		return false;
		}
	else if(bday==null||bday=="")
	{
	document.getElementById("errorMsg4").innerHTML="please select the gender";
	return false;
	}
	
	else if(emailid==null||emailid=="")
		{
		document.getElementById("errorMsg5").innerHTML="please enter emailId";
		return false;
		}
	else if(mobilenumber==null||mobilenumber=="")
	{
	document.getElementById("errorMsg6").innerHTML="please enter mobile Number";
	return false;
	}
	else if(Aadhar==null||(Aadhar=="")
	{
	document.getElementById("errorMsg7").innerHTML="please enter permanent addr";
	return false;
	}
	else if(paddr==null||(paddr=="")
			{
			document.getElementById("errorMsg8").innerHTML="please enter permanent addr";
			return false;
			}
	else if(Laddar==null||(Laddrar=="")
			{
			document.getElementById("errorMsg9").innerHTML="please enter permanent addr";
			return false;
			}
	else if(details==null||(details=="")
			{
			document.getElementById("errorMsg10").innerHTML="please enter permanent addr";
			return false;
			}
	else if(passedout==null||(passedout=="")
			{
			document.getElementById("errorMsg11").innerHTML="please enter permanent addr";
			return false;
			}
	else if(12th deatils==null||12th deatils=="")
			{
			document.getElementById("errorMsg12").innerHTML="please enter permanent addr";
			return false;
			}
	
	else if(passout==null||(passout=="")
			{
			document.getElementById("errorMsg13").innerHTML="please enter permanent addr";
			return false;
			}
	else if(Graduation==null||(Graduation=="")
			{
			document.getElementById("errorMsg14").innerHTML="please enter permanent addr";
			return false;
			}
	else if(Passout==null||(Passout=="")
			{
			document.getElementById("errorMsg15").innerHTML="please enter permanent addr";
			return false;
			}
	else if(branch==null||(branch=="")
			{
			document.getElementById("errorMsg16").innerHTML="please enter permanent addr";
			return false;
			}
	else if(university==null||(university=="")
			{
			document.getElementById("errorMsg17").innerHTML="please enter permanent addr";
			return false;
			}
	else if(company==null||company=="")
	{
	document.getElementById("errorMsg18").innerHTML="please enter emplyId";
	return false;
	}
	else if(Role==null||Role=="")
	{
	document.getElementById("errorMsg19").innerHTML="please your role";
	return false;
	}
	else if(joining==null||joining=="")
	{
	document.getElementById("errorMsg20").innerHTML="please your role";
	return false;
	}
	else if(loction==null||location=="")
	{
	document.getElementById("errorMsg21").innerHTML="please your role";
	return false;
	}
	else if(experience==null||experience=="")
	{
	document.getElementById("errorMsg22").innerHTML="please your role";
	return false;
	}
	else if(select ctc==null||select ctc=="")
	{
	document.getElementById("errorMsg23").innerHTML="please your role";
	return false;
	}
	else if(select ectc==null||select ectc=="")
	{
	document.getElementById("errorMsg24").innerHTML="please your role";
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
		document.getElementById("errorMs24").innerHTML="";
	}
		
</script>




</head>
<body>
	<div id="nav">
		<h1>
			<a href="index.html">Dhatsol IT Solutions</a>
		</h1>

		<nav>
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="User.jsp">Login</a></li>
			<!--                 <li id="active"><a href="EmployeeRgistration.jsp">Employee</a> </li> -->


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

		<div class="container">
			<center>
				<h1 style="color: white;"padding:50%; margin-top:50%; height:20%;>
					<center>
						<b>Registration Form</b>
					</center>
				</h1>
				<hr>
				<!-- <img src="f:/sreenu/sreenu9.jpg" width="100%";height="100%" >-->
				<div class="panel panel-default">
					<h2>Personal Information</h2>
					<br> <br>
					<table>
						<tr>
							<td>*First Name:</td>
							<td><input type="text" onkeypress="clearForm()" id="firstName"
								name="fname" placeholder="Enter username"><br> <br></td>
							<td><p id="errorMsg" style="color: red;"></p></td>
						</tr>
						<tr>
							<td>*Last Name:</td>
							<td><input type="text" onkeypress="clearForm()" id="lastName"
								name="lname"><br> <br></td>
							<td><p1 id="errorMsg1" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>*Father Name:</td>
							<td><input type="text" onkeypress="clearForm()" id="FatherName" name="faName"><br> <br></td>
							<td><p1 id="errorMsg2" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>*Gender:</td>
							<td><input type="radio" name="Gender" value="male" 
								onkeypress="clearForm()" id="gender">Male <input
								type="radio" name="gender" value="female">Female <input
								type="radio" name="gender" value="others">Others</td>
							<td><p2 id="errorMsg3" style=color:red;></p2><br> <br></td>
						</tr>
						<tr>
							<td>*Date Of Birthday:</td>
							<td><input type="date" name="bday"   onkeypress="clearForm()" id="dob"><br> <br></td>
							<td><p1 id="errorMsg4" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>*Email Id:</td>
							<td><input type=text onkeypress="clearForm()" id="emailId"
								name="emailid"><br> <br></td>
							<td><p3 id="errorMsg5" style=color:red;></p3></td>
						</tr>
						<tr>
							<td>*Mobile No:</td>
							<td><input type=text onkeypress="clearForm()" id="mobileId"
								name="mobile number"text-align:right;><br> <br></td>
							<td><p3 id="errorMsg6" style=color:red;></p3></td>
						</tr>
						<tr>
							<td>*Aadhar Number:</td>
							<td><input type=text name="Aadhar"  onkeypress="clearForm()" id="adhar"><br> <br></td>
							<td><p1 id="errorMsg7" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>*Permanent Addr:</td>
							<td><textarea rows="2" onkeypress="clearForm()" id="permanent" name="Paddr">
</textarea><br> <br></td>
							<td><p4 id="errorMsg8" style=color:red;></p4></td>
						</tr>
						<tr>
							<td>*Local Addr:</td>
							<td><textarea rows="2" onkeypress="clearForm()" id="laddr" name="Laddr">
</textarea></td>
							<br>
							<br>
							<td><p1 id="errorMsg9" style=color:red;></p1></td>
						</tr>
					</table>
					<br> <br>
					<h2>Educational Information</h2>
					<br> <br>
					<table>
						<tr>
							<td>*10th School Name:</td>
							<td><input type=text name="details"  onkeypress="clearForm()" id="tenthname"><br> <br></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*10Th Passout:</td>
							<td><p1 id="errorMsg11" style=color:red;></p1></td>
							<td><input type=text name="passdout" onkeypress="clearForm()" id="tenthpassout"></td>
							<td><p1 id="errorMsg10" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>*Intermediate College Name:</td>
							<td><input type=text name="12th details" onkeypress="clearForm()" id="intermediatename"> </select><br>
								<br></td>
								<td><p1 id="errorMsg12" style=color:red;></p1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;*12Th Passout:</td>
							<td><input type=text name="passout" onkeypress="clearForm()" id="interpassout"></td>
							<td><p1 id="errorMsg13" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>*Graduation Details:</td>
							<td><select name="Graduation" onkeypress="clearForm()" id="graduation">
									<option value=""></option>
									<option value="B.Tech">B.TECH</option>
									<option value="M.Tech">M.TECH</option>
									<option value="MBA">MBA</option>
									<option value="PG">PG</option>
									
							</select><br> <br></td>
							<td><p1 id="errorMsg14" style=color:red;></p1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;*Graduation Passout:</td>
							<td><input type=text name="Passout" onkeypress="clearForm()" id="graduationpassout"></td>
							<td><p1 id="errorMsg15" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>*Branch:</td>
							<td><select name="branch" onkeypress="clearForm()" id="Branch">
									<option value=""></option>
									<option value="ECE">ECE</option>
									<option value="EEE">EEE</option>
									<option value="CSE">CSE</option>
									<option value="Civil">CIVIL</option>
									<option value="Mechanical">MECHANICAL</option>
							</select></td>
							<td><p1 id="errorMsg16" style=color:red;></p1></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;*University:</td>
							<td><input type=text name="university" onkeypress="clearForm()" id="University"></td>
							<td><p1 id="errorMsg17" style=color:red;></p1></td>
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
							<td><input type=text name="company" onkeypress="clearForm()"
								id="companyId"><br> <br></td>
							<td><p5 id="errorMsg18" style=color:red;></p5></td>
						</tr>
						<tr>
							<td>Role:</td>
							<td><input type=text name="Role" onkeypress="clearForm()"
								id="roleId"></td>
							<td><p6 id="errorMsg19" style=color:red;></p6><br> <br></td>
						</tr>
						<tr>
							<td>Notice Period:</td>
							<td><select name="joining" onkeypress="clearForm()" id="np">
									<option value=""></option>
									<option value="10days">10days</option>
									<option value="15days">15days</option>
									<option value="1month">1month</option>
									<option value="20days">20days</option>
									<option value="2months">2months</option>

							</select><br> <br></td>
							<td><p1 id="errorMsg20" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>Location:</td>
							<td><input type=text name="location" onkeypress="clearForm()" id="loc"><br> <br></td>
							<td><p1 id="errorMsg21" style=color:red;></p1></td>
							<!-- <center style="text-align:top"></center> -->
						</tr>
						<tr>
							<td>Experience:</td>
							<td><input type=text name="experience" onkeypress="clearForm()" id="exp"><br> <br></td>
							<td><p1 id="errorMsg22" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>Current CTC:</td>
							<td><input type=text name="select ctc" onkeypress="clearForm()" id="cctc"><br> <br></td>
							<td><p1 id="errorMsg23" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>Excepted CTC:</td>
							<td><input type=text name="select ectc" onkeypress="clearForm()" id="ectc"><br> <br></td>
							<td><p1 id="errorMsg24" style=color:red;></p1></td>
						</tr>
					</table>
					<br>
					<center>
						<input type=submit onclick=" return registrationValidation()"
							value="submit" class="sreenu">

					</center>
				</div>
</body>
</html>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	