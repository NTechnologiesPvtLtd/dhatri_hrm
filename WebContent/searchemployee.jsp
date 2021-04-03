<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dhatsol</title>

<link href="stylesheets\bootstrap.css" rel="stylesheet" />
<link href="stylesheets\newstyle.css" rel="stylesheet"/>
<link href="stylesheets\custom.css" rel="stylesheet"/>
<link href='https://fonts.googleapis.com/css?family=Cambo|Poppins:400,600' rel='stylesheet' type='text/css'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
 <div class="container-fluid" >
 
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
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
 </div>

    
    <br><br><br><br><br><br>
    <div class="container">
    <form action="SearchData" method="post">
    <label for="searchid">Search with employee name</label>
    	<input type="text" name="searchid" name="searchid" class="" >
    </form>
    	
    </div>


<br><br><br><br><br><br>
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
<script src="jsFiles\custom.js" type="text/javascript"></script>
<script type="text/javascript" src="jsFiles\modernizr.js"></script>
<script type="text/javascript" src="jsFiles\gaia.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 
 
</body>
</html>