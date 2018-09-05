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
</head>
<body>
	<div id="nav">
		<h1>
			<a href="index.html">Dhatsol IT Solutions</a>
		</h1>

		<nav>
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="user.html">Login</a></li>
			<!--                 <li id="active"><a href="registration.html">Employee</a> </li> -->


			<div class="dropdown">
				<button class="dropbtn">
					Employee <i class="fa fa-caret-down" id="active"></i>
				</button>
				<div class="dropdown-content">
					<a href="registration.html">New Registration</a> <a href="#">Response
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
							<td>First Name:</td>
							<td><input type=text onkeypress="clearForm()" id="firstName"
								name="fname"><br> <br></td>
							<td><p id="errorMsg" style="color: red;"></p></td>
						</tr>
						<tr>
							<td>Last Name:</td>
							<td><input type=text onkeypress="clearForm()" id="lastName"
								name="lname"><br> <br></td>
							<td><p1 id="errorMsg1" style=color:red;></p1></td>
						</tr>
						<tr>
							<td>Father Name:</td>
							<td><input type=text name="fname"><br> <br></td>
						</tr>
						<tr>
							<td>Gender:</td>
							<td><input type="radio" name="gender" value="male"
								onkeypress="clearForm()" id="gender">Male <input
								type="radio" name="gender" value="female">Female <input
								type="radio" name="gender" value="others">Others</td>
							<td><p2 id="errorMsg2" style=color:red;></p2><br> <br></td>
						</tr>
						<tr>
							<td>Date Of Birthday:</td>
							<td><input type="date" name="bday"><br> <br></td>
						</tr>
						<tr>
							<td>Email Id:</td>
							<td><input type=text onkeypress="clearForm()" id="emailId"
								name="emailid"><br> <br></td>
							<td><p3 id="errorMsg4" style=color:red;></p3></td>
						</tr>
						<tr>
							<td>Mobile No:</td>
							<td><input type=text onkeypress="clearForm()" id="mobileId"
								name="mobile number"text-align:right;><br> <br></td>
							<td><p3 id="errorMsg5" style=color:red;></p3></td>
						</tr>
						<tr>
							<td>Aadhar Number:</td>
							<td><input type=text name="Aadhar"><br> <br></td>
						</tr>
						<tr>
							<td>Permanent Addr:</td>
							<td><textarea rows="2" onkeypress="clearForm()" id="AddrId">
</textarea><br> <br></td>
							<td><p4 id="errorMsg6" style=color:red;></p4></td>
						</tr>
						<tr>
							<td>Local Addr:</td>
							<td><textarea rows="2">
</textarea></td>
							<br>
							<br>
						</tr>
					</table>
					<br> <br>
					<h2>Educational Information</h2>
					<br> <br>
					<table>
						<tr>
							<td>10th School Name:</td>
							<td><input type=text name="details"><br> <br></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10Th Passout:</td>
							<td><input type=text name="passout"></td>
						</tr>
						<tr>
							<td>Intermediate College Name:</td>
							<td><input type=text name="12th details"> </select><br>
								<br></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;12Th Passout:</td>
							<td><input type=text name="passout"></td>
						</tr>
						<tr>
							<td>Graduation Details:</td>
							<td><select name="graduation details">
									<option value=""></option>
									<option value="B.Tech">B.TECH</option>
									<option value="M.Tech">M.TECH</option>
									<option value="MBA">MBA</option>
									<option value="PG">PG</option>
							</select><br> <br></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;Graduation Passout:</td>
							<td><input type=text name="passout"></td>
						</tr>
						<tr>
							<td>Branch:</td>
							<td><select name="branch">
									<option value=""></option>
									<option value="ECE">ECE</option>
									<option value="EEE">EEE</option>
									<option value="CSE">CSE</option>
									<option value="Civil">CIVIL</option>
									<option value="Mechanical">MECHANICAL</option>
							</select></td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;University:</td>
							<td><input type=text name="university"></td>
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
							<td><p5 id="errorMsg7" style=color:red;></p5></td>
						</tr>
						<tr>
							<td>Role:</td>
							<td><input type=text name="Role" onkeypress="clearForm()"
								id="roleId"></td>
							<td><p6 id="errorMsg8" style=color:red;></p6><br> <br></td>
						</tr>
						<tr>
							<td>Notice Period:</td>
							<td><select name="joining">
									<option value=""></option>
									<option value="10days">10days</option>
									<option value="15days">15days</option>
									<option value="1month">1month</option>
									<option value="20days">20days</option>
									<option value="2months">2months</option>

							</select><br> <br></td>
						</tr>
						<tr>
							<td>Location:</td>
							<td><input type=text name="location"><br> <br></td>
							<!-- <center style="text-align:top"></center> -->
						</tr>
						<tr>
							<td>Experience:</td>
							<td><input type=text name="experience"><br> <br></td>
						</tr>
						<tr>
							<td>Current CTC:</td>
							<td><input type=text nme="select ctc"><br> <br></td>
						</tr>
						<tr>
							<td>Excepted CTC:</td>
							<td><input type=text name="select ctc"><br> <br></td>
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