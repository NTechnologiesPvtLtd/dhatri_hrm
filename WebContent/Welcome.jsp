<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="updatevalidation.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user details</title>
<style>
body {
    padding: 0px;
    margin: 0px;
    background: url(111.jpeg) no-repeat;
    background-size: cover;
      
    }
   
  form
  {
  text-align:right;
 }

 a {
text-decoration: none;

}

                      
  input[type="submit"]
             {
                text-align:center;
                 background: blue;
                 color: white;
                 font-size: 16px;
                 font-family:Constantia;
                 }
   input[type="submit"]:hover {
   Color: Blue;
   background: White;
   }
ul {
margin: 0px;
padding:0px;
list-style:none;
}
ul li{
float:left;
width:200px;
height:40px;
background-color:black;
opacity:.8;
text-align:center;
line-height:40px;
margin-right:2px;
}
ul li a {
text-decoration: none;
color: white;
display:block;
 }
ul li a:hover {
background-color: Blue;
}
ul li ul li {
display: none;
}
ul li:hover ul li{ 
display: block;
}
}
</style>
</head>
<form action="logout.jsp" method="post" >
  <input type="submit" value="Logout">
</form>
<H1><a href="index.jsp">Dhatsol IT Solutions</a> </H1>
<ul>
 <li><a> Employee </a> 
   <ul>
   <li>	<a href="EmployeeRegistration.jsp"> New Registration</a> </li>
   <li><a> Search Employee </a> </li>
   <li><a> Respond approved </a> </li>
   </ul>
<li><a href="index.jsp"> Home <a></li>
<li><a> About Us </a></li>
<br>
</br>
<h1 style="text-align:left;color:black;background-color:white;width:200px"><a href="userupdate.jsp"> ProfileUpdate</a></h1>
</body>
</html>