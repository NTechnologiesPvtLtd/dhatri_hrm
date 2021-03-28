<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Dhatsol</title>

<link href="stylesheets\bootstrap.css" rel="stylesheet" />
<link href="stylesheets\newstyle.css" rel="stylesheet"/>
<link href='https://fonts.googleapis.com/css?family=Cambo|Poppins:400,600' rel='stylesheet' type='text/css'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">


 <style>
 
     .carousel-item {
  height: 100vh;
  min-height: 350px;
  background: no-repeat center center scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
</style>
    <style type="text/css">
    body {
		font-family: 'Varela Round', sans-serif;
	}
	.modal-login {
		color: #636363;
		width: 350px;
	}
	.modal-login .modal-content {
		padding: 20px;
		border-radius: 5px;
		border: none;
	}
	.modal-login .modal-header {
		border-bottom: none;
		position: relative;
		justify-content: center;
	}
	.modal-login h4 {
		text-align: center;
		font-size: 26px;
	}
	.modal-login  .form-group {
		position: relative;
	}
	.modal-login i {
		position: absolute;
		left: 13px;
		top: 11px;
		font-size: 18px;
	}
	.modal-login .form-control {
		padding-left: 40px;
	}
	.modal-login .form-control:focus {
		border-color: #00ce81;
	}
	.modal-login .form-control, .modal-login .btn {
		min-height: 40px;
		border-radius: 3px; 
	}
	.modal-login .hint-text {
		text-align: center;
		padding-top: 10px;
	}
	.modal-login .close {
        position: absolute;
		top: -5px;
		right: -5px;
	}
	.modal-login .btn {
		    background: forestgreen;
    border: none;
    color: antiquewhite;
		line-height: normal;
	}
	.modal-login .btn:hover, .modal-login .btn:focus {
		background: #00bf78;
	}
	.modal-login .modal-footer {
		background: #ecf0f1;
		border-color: #dee4e7;
		text-align: center;
		margin: 0 -20px -20px;
		border-radius: 5px;
		font-size: 13px;
		justify-content: center;
	}
	.modal-login .modal-footer a {
		color: #999;
	}
	.trigger-btn {
		display: inline-block;
		margin: 100px auto;
	}
</style>
<script type="text/javascript">
	function loginValidation() {
		var employeeId = document.getElementById("loginId").value;
		var mobileNumber = document.getElementById("Password").value;
		var type = document.getElementById("type").value;
		if (employeeId == null || employeeId == "") {
			document.getElementById("errorMsg").innerHTML = "please enter EmployeeId";
			return false;
		} else if (mobileNumber == null || mobileNumber == "") {
			document.getElementById("errorMsg1").innerHTML = "please enter Password";
			return false;
		} else if (type == "" || type == "None") {
			document.getElementById("errorMsg2").innerHTML = "Enter Given Type";
			return false;
		}

		else
			return true;
	}
	function clearForm() {
		document.getElementById("errorMsg").innerHTML = "";
		document.getElementById("errorMsg1").innerHTML = "";
		document.getElementById("errorMsg2").innerHTML = "";
	}
</script>
</head>
<body>

	<%
		SharedObject.setSession(session);
	%>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		function showcommentform() {
			var data = "EmployeeId:<input type='text' name='employeeId'>";

			document.getElementById('location').innerHTML = data;
		}

		function showcommentform1() {
			document.getElementById('location').innerHTML = "";
		}
	</script>

    <nav class="navbar navbar-default navbar-fixed-top" >
        <!-- if you want to keep the navbar hidden you can add this class to the navbar "navbar-burger"-->
        <div class="container">
            <div class="navbar-header">
                <button id="menu-toggle" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar bar1"></span>
                    <span class="icon-bar bar2"></span>
                    <span class="icon-bar bar3"></span>
                </button>
                <a href="#" class="navbar-brand">
                    <strong>Dhatsol IT Solutions</strong> 
                </a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right navbar-uppercase">
                    <li>
                        
                        <a href="Home.jsp" ><i class="fa fa-home"></i>Home</a>
                    </li>
                    <li>
                    <a class="nav-link" href="#myModal" class="trigger-btn" data-toggle="modal"><i class="fa fa-sign-in"></i>Login</a>
                        
                    </li>
                    <li>
                        <a href="Aboutus.jsp" >About Us</a>
                    </li>
                    <li class="dropdown">
                        <a href="#gaia" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-sliders"></i> Services
                        </a>
                        <ul class="dropdown-menu dropdown-danger">
                            <li>
                                <a href="#"> Software Development</a>
                            </li>
                            <li>
                                <a href="#">New Technologies Applications</a>
                            </li>
                            <li>
                                <a href="#"> Database Management</a>
                            </li>
                            <li>
                                <a href="#"> IT Consulting</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#" class="btn btn-danger btn-fill">Contact Us</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </nav>
    

    <div id="myModal" class="modal fade">
		<div class="modal-dialog modal-login">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Member Login</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">

					<form action="LoginServlet" method="post">
						<div class="form-group">
							<i class="fa fa-user"></i>
	 <input type="text" onkeypress="clearForm()" id="loginId" name="employeeId" class="form-control"
								placeholder="EmployeeId" required="required">
						</div>
						<div class="form-group">
							<i class="fa fa-lock"></i>
							 <input type="password"class="form-control" onkeypress="clearForm()" id="Password"
								name="mobileNumber" placeholder="Enter password"
								required="required">
						</div>
						<div class="form-group">
							<p>Type</p>
							<select name="type" class="form-control" onkeypress="clearForm()"
								id="type">
								<option value="None">Enter Given Type</option>
								<option value="employee">EMPLOYEE</option>
								<option value="employeer"> Employeer</option>
								<option value="admin">ADMIN</option>
								<option value="manager">Manager</option>
								<option value="hr">HR</option>
							</select>
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary btn-block btn-lg"
								type="submit" onclick="return loginValidation()" value="login">
						</div>
					</form>

				</div>
				<div class="modal-footer">
					<a href="ForgetPassword.jsp">forgot password</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
			</div>
		</div>
	</div>



    <div class="section section-header">
        <div class="parallax filter filter-color-red">
            <div class="image"
                style="background-image: url('111.jpeg')">
            </div>
            <div class="container">
                <div class="content">
                    <div class="title-area">
                        
                        <h1 class="title-modern">Dhatsol IT Solutions</h1>
                       
                        <div class="separator line-separator"><i class="fa fa-star" aria-hidden="true"></i></div>
                    </div>

                    <div class="button-get-started">
                        <a href="#"  class="btn btn-white btn-fill btn-lg ">
                            Free Demo
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <div class="section">
        <div class="container">
            <div class="row">
                <div class="title-area">
                    <h2>Our Services</h2>
                    <div class="separator separator-danger"><i class="fa fa-star" aria-hidden="true"></i></div>
                    <h3><strong>Power up your business with our best integration services.</strong> </h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <div class="info-icon">
                        <div class="icon text-danger">
                            <i class="fa fa-line-chart" aria-hidden="true"></i>
                        </div>
                        <h3>Big Data Solutions</h3>
                        <p class="description text-justify">We assist organizations in building architecture, selecting the right set of tools, effective way of storing data, Analyzing and Visualizing Big data Solutions. </p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="info-icon">
                        <div class="icon text-danger">
                            <i class="fa fa-area-chart"></i>
                        </div>
                        <h3>Data Analytics Services </h3>
                        <p class="description text-justify">We help organizations in building Azure cloud infrastructure, Data analytics Services migrating from on-premise to Microsoft Azure and finding insights from data–at-rest and data-in-motion.</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="info-icon">
                        <div class="icon text-danger">
                            <i class="fa fa-database"></i>
                        </div>
                        <h3>Database Mangaement</h3>
                        <p class="description text-justify">We like to present the world with our work, so we make sure we spread the word regarding our clothes.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="section section-our-team-freebie">
        <div class="parallax filter filter-color-black">
            <div class="image" style="background-image:url('assets/img/header-2.jpeg')">
            </div>
            <div class="container">
                <div class="content">
                    <div class="row">
                        <div class="title-area">
                            <h2>Who We Are</h2>
                            <div class="separator separator-danger"><i class="fa fa-star" aria-hidden="true"></i></div>
                            <p class="description">We are a digital transformation consultancy and software development company that provides cutting edge engineering solutions, helping Fortune 500 companies and enterprise clients untangle complex issues that always emerge during their digital evolution journey. Since 2007 we have been a visionary and a reliable software engineering partner for world-class brands.</p>
                        </div>
                    </div>

                    <div class="team">
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="card card-member">
                                            <div class="content">
                                                <div class="avatar avatar-danger">
                                                    <img alt="..." class="img-circle" src="https://images-na.ssl-images-amazon.com/images/I/711Qha%2Bw8GL._SX466_.jpg"/>
                                                </div>
                                                <div class="description">
                                                    <h3 class="title">XXXX</h3>
                                                    <p class="small-text">CEO / Co-Founder</p>
                                                    <p class="description">I miss the old Kanye I gotta say at that time I’d like to meet Kanye And I promise the power is in the people and I will use the power given by the people to bring everything I have back to the people.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card card-member">
                                            <div class="content">
                                                <div class="avatar avatar-danger">
                                                    <img alt="..." class="img-circle" src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Y_Combinator_logo.svg/1200px-Y_Combinator_logo.svg.png"/>
                                                </div>
                                                <div class="description">
                                                    <h3 class="title">YYYY</h3>
                                                    <p class="small-text">Product Designer</p>
                                                    <p class="description">I miss the old Kanye I gotta say at that time I’d like to meet Kanye And I promise the power is in the people and I will use the power given by the people to bring everything I have back to the people.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="card card-member">
                                            <div class="content">
                                                <div class="avatar avatar-danger">
                                                    <img alt="..." class="img-circle" src="https://image.freepik.com/free-vector/z-letter_53876-60370.jpg"/>
                                                </div>
                                                <div class="description">
                                                    <h3 class="title">ZZZZ</h3>
                                                    <p class="small-text">Marketing Hacker</p>
                                                    <p class="description">I miss the old Kanye I gotta say at that time I’d like to meet Kanye And I promise the power is in the people and I will use the power given by the people to bring everything I have back to the people.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    


    <div class="section section-small section-get-started">
        <div class="parallax filter">
            <div class="image"
                style="background-image: url('assets/img/office-1.jpeg')">
            </div>
            <div class="container">
                <div class="title-area">
                    <h2 class="text-white">Do you want to work with us?</h2>
                    <div class="separator line-separator"><i class="fa fa-star" aria-hidden="true"></i></div>
                    <p class="description"> We are keen on creating a second skin for anyone with a sense of style! We design our clothes having our customers in mind and we never disappoint!</p>
                </div>

                <div class="button-get-started">
                    <a href="#gaia" class="btn btn-danger btn-fill btn-lg">Contact Us</a>
                </div>
            </div>
        </div>
    </div>

<footer class="footer footer-big footer-color-black" data-color="black">
        <div class="container">
            <div class="row">
                <div class="col-md-2 col-sm-3">
                    <div class="info ">
                        <h5 class="title"><center>About Company</center></h5>
                        <p class="text-center">
                            We helps customers do business better by leveraging our
								industry-wide,deep technology expertise, comprehensive portfolio
								of services and vertically aligned business model.
                        </p>
                    </div>
                </div>
                <div class="col-md-3 col-md-offset-1 col-sm-3">
                    <div class="info">
                        <h5 class="title"> Services</h5>
                         <nav>
                            <ul>
                                <li><a href="#">Software Development</a></li>
                                <li><a href="#">New Technologies Applications</a></li>
                                <li><a href="#">Database Management</a></li>
                                <li><a href="#">IT Consulting</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3">
                    <div class="info">
                        <h5 class="title">Contact</h5>
                        <nav>
                            <ul>
                                <li>
                                    
					<address>

						<p>
							PJR Arcade<br> Plot No. 129/A, Suite #2, <br> Sri Sai
							Nagar,<br> Kukatpally, Hyderabad - 500085<br> Ph:: 040
							48520666 <br> E-Mail:: hr@dhatsol.com <br>
						</p>
					</address>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-md-2 col-md-offset-1 col-sm-3">
                    <div class="info">
                        <h5 class="title">Follow us on</h5>
                        <nav>
                            <ul>
                                <li>
                                    <a href="#" class="btn btn-social btn-facebook btn-simple">
                                        <i class="fa fa-facebook-square"></i> Facebook
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="#" class="btn btn-social btn-twitter btn-simple">
                                        <i class="fa fa-twitter"></i> Twitter
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="btn btn-social btn-reddit btn-simple">
                                        <i class="fa fa-google-plus-square"></i> Google+
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <hr>
            <div class="copyright">
                 © <script> document.write(new Date().getFullYear()) </script> Dhatsol IT Solutions
            </div>
        </div>
    </footer>



<script src="jsFiles\jquery.min.js" type="text/javascript"></script>
<script src="jsFiles\bootstrap.js" type="text/javascript"></script>
<script type="text/javascript" src="jsFiles\modernizr.js"></script>
<script type="text/javascript" src="jsFiles\js/gaia.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 
 
    
</body>
</html>                            