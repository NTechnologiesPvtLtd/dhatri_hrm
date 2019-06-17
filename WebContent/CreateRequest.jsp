<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
 <%@page import="com.hrm.controller.CreateRequestServlet"%>
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
<link rel="stylesheet" media="all" href="stylesheets/animate.css" />
<script type="text/javascript" src="jsFiles\dropDownAjax.js">
 
</script>
<style>
#reason{
height:30px;
width:180px;
}
#textArea{
width:280px;
height:60px;
}
</style>

</head>
<body>
 <div id="nav">
  <h1>
   <a href="index.jsp">Dhatsol IT Solutions</a>
  </h1>
  <nav>
  <ul>
   <li><a href="index.jsp">Home</a></li>
   <li id="active"><a href="Login.jsp">Login</a></li>
   <div class="dropdown">
    <button class="dropbtn">
     Employee <em class="fa fa-caret-down"></em>
    </button>
    <div class="dropdown-content">
     <a href="EmployeeRegistration.jsp">New Registration</a> <a href="#">Response
      Approved</a> <a href="EmployeeViewDirection.jsp">Search Employee</a> <a
      href="user.jsp">Login</a>
    </div>
   </div>
   <li><a href="Aboutus.html">about us</a></li>

  </ul>
 </div>
 <div id="#mainform">
  <br> <br>

  <div class="loginbox">
   <br> <br>
   <form action="CreateRequestServlet" method="post">
<div class=emailTo>
<div id="EmailTo">
email To: <select id="emailTo" name="emailTo"
onchange="getManagerList(this.value)">
<option>Select manager</option>
<option value="Project Manager">Projectmanager</option>
<option value="HR Manager">HrManager</option>
<option value="Admin">Admin</option>
</select> <br>
</div><br>
<div id="managerOptions">
Manager : <select>
<option>Select name</option>
</select>
</div><br>
Reason: <textarea type="text" name="reason" id="reason" onkeydown="reason(this.value)">
</textarea>
<br><br>
TextArea: <textarea type="text" rows="5" name="textArea" id="textArea" placeholder="Enter text here..." onkeydown="reason(this.value)">
</textarea>
<br><br>
<button>Send</button>
<button>Cancel</button>
</form>
   </form>
  </div>
 </div>

 </form>
</body>
</html>

