<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dhatsol</title>


<link href="stylesheets\bootstrap.css" rel="stylesheet" />
<link href="stylesheets\newstyle.css" rel="stylesheet"/>
<link href="stylesheets\custom.css" rel="stylesheet"/>
<link href='https://fonts.googleapis.com/css?family=Cambo|Poppins:400,600' rel='stylesheet' type='text/css'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">


</head>

<body class="homepage">


	<nav class="navbar navbar-default navbar-fixed-top" >
        
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
							<input type="submit" class="btn btn-primary btn-block btn-lg submit-color"
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
	
	<section id="about-us">
	<div class="container">
		<div class="skill-wrap clearfix">
			<div class="center wow fadeInDown">
				<h2>
					About <span>Dhatsol</span>
				</h2>
				<p
					style="text-align: justify; font-weight: 300; line-height: 30px; margin: 0 0 10px;">
					We helps customers do business better by leveraging our
					industry-wide experience, deep technology expertise, comprehensive
					portfolio of services and vertically aligned business model. We
					ensure the highest levels of certainty and satisfaction through a
					deep-set commitment to our clients, will have to rapidly reengineer
					themselves and be more responsive to changing customer needs.
					consumer experience and determining how we live our lives.</p>
				<p
					style="text-align: justify; font-weight: 300; line-height: 30px; margin: 0 0 10px;">
					With consumers becoming increasingly sophisticated and demanding,
					technology innovations today happen at an astounding pace – the
					consumption and delivery platforms evolving steadily. It is an
					integrated approach towards implementing quality practices of
					best-class benchmarking models, member firms went public with their
					intentions, and they gained recognition as thought leaders in
					business and societal change.</p>
				<p
					style="text-align: justify; font-weight: 300; line-height: 30px; margin: 0 0 10px;">Our
					applications development and maintenance solutions drive efficiency
					and effectiveness and help you build adaptable platforms for the
					new social, mobile enterprise. Technology-enabled business
					transformation services is rapidly growing.</p>
				<p
					style="text-align: justify; font-weight: 300; line-height: 30px; margin: 0 0 10px;">Partners
					share common set of cultural values and drive the same kind of
					business goals. Both value integrity, technology depth over
					marketing strength and put customer success above all else. winning
					partnerships that offer mutual business growth opportunities, joint
					value driven by collaboration, executive commitment and thought
					leadership around future technologies. For quicker and better
					decisions, one must learn to cope with and build on the high volume
					and velocity of real-time structured and unstructured data i​n
					different formats.</p>


			</div>
			<div class="container" style="background-image: url(blue.jpg);">

				<div class="row">
					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown"
							data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="joomla-skill">
								<h2>95%</h2>
								<h5>Software Development</h5>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="container" style="background-image: url(blue.jpg);">
				<div class="col-sm-3">
					<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms"
						data-wow-delay="600ms">
						<div class="html-skill">
							<h2>85%</h2>
							<h5>New Technologies Applications</h5>
						</div>
					</div>
				</div>
			</div>

			<div class="container" style="background-image: url(blue.jpg)";>

				<div class="col-sm-3">
					<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms"
						data-wow-delay="900ms">
						<div class="css-skill">
							<h2>80%</h2>
							<h5>Database Management</h5>
						</div>
					</div>
				</div>
			</div>
			<div class="container" style="background-image: url(blue.jpg)";>

				<div class="col-sm-3">
					<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms"
						data-wow-delay="600ms">

						<div class="wp-skill">
							<h2>90%</h2>
							<h5>IT Consulting</h5>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
	</section>
	




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
                 � <script> document.write(new Date().getFullYear()) </script> Dhatsol IT Solutions
            </div>
        </div>
    </footer>



<script src="jsFiles\jquery.min.js" type="text/javascript"></script>
<script src="jsFiles\bootstrap.js" type="text/javascript"></script>
<script type="text/javascript" src="jsFiles\modernizr.js"></script>
<script type="text/javascript" src="jsFiles\gaia.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/0.1.12/wow.min.js"></script>

</body>
</html>