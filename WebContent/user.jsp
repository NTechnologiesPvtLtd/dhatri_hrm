<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Dhatsol</title>
     
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" media="all" href="stylesheets/animate.css" />
    
<script type="text/javascript">

function loginValidation()
{
	var employeeId=document.getElementById("loginId").value;
	var mobileNumber=document.getElementById("Password").value;
	var type=document.getElementById("type").value;
	if(employeeId==null||employeeId=="")
	{
	document.getElementById("errorMsg").innerHTML="please enter EmployeeId";
	return false;
	}
else if(mobileNumber==null||mobileNumber=="")
	{
	document.getElementById("errorMsg1").innerHTML="please enter Password";
	return false;
	}
else if(type==null||type=="Enter Given Type")
{
document.getElementById("errorMsg2").innerHTML="Enter Given Type";
}
	
else
	return true;
}
function clearForm()
{
	document.getElementById("errorMsg").innerHTML="";
	document.getElementById("errorMsg1").innerHTML="";
	document.getElementById("errorMsg2").innerHTML="";
}

</script>

	
    
 </head>
    <body>
       <div id="nav">
           <h1><a href="index.jsp">Dhatsol IT Solutions</a></h1>
           
            <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li id="active"><a href="user.jsp">Login</a> </li> 
                <li><a href="EmployeeRegistration.jsp">Employee</a> </li>

<div class="dropdown">
    <button class="dropbtn">Employee
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="EmployeeRegistration.jsp">New Registration</a>
      <a href="#">Response Approved</a>
      <a href="EmployeeView.jsp">Search Employee</a>
	  <a href="user.jsp">Login</a>
     
    </div>
  </div> 

      <li><a href="Aboutus.html">about us</a></li>
                
                
                
                </ul>
            </div>
        <div id="#mainform">
        
        <div class="loginbox">

<br><br>
<h1>LOGIN HERE</h1>
<form action="LoginServlet" method="post">
<p><b>EmployeeId<b>
<input type="text"  onkeypress="clearForm()"  id="loginId" name="employeeId" placeholder="Enter employeeId" required></p>
<p id="errorMsg" style="color:black";"background-color:orange";></p>
<p>Password</p>
<input type="password"  onkeypress="clearForm()"  id="Password" name="mobileNumber" placeholder="Enter password" required><br>
<p id="errorMsg1" style="color:black";"background-color:orange";></p>


<p>Type</p>            

<select name="type" id="type"checked>
<option value="employee">Enter Given Type</option>
<option value="employee">Employee</option>
<option value="employeer">employeer</option>
<option value="admin">admin</option>
<option value="hr">hr</option>
</select>
<br><br>
<input type="submit" onclick="return loginValidation()" value="login"><br>


<a href="#">forgot password</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="#">don't have a account</a>
</form>
</div>
        </div>
        
       
</form>
</body>
</html>