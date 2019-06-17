<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="com.hrm.session.SharedObject"%>
      <%@page import="com.hrm.bean.EmployeeBean"%>
<%@page import="java.util.List"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" media="all" href="stylesheets/animate.css"/>





<title>Insert title here</title>
<script type="text/javascript">
var request;  
function sendInfo()  
{  
var value= document.getElementById("searchEle").value;  
var url="SingleEmployeeView.jsp?val="+value;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('result').innerHTML=val;  
}  
}  
</script>

</head>
<body>
<%SharedObject.setSession(request.getSession()); %>
<div id="nav">
		<h1>
			<a href="index.jsp">Dhatsol IT Solutions</a>
		</h1>

		
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="Login.jsp">Login</a></li>
		


			<div class="dropdown">
				<button class="dropbtn">
					Employee <em class="fa fa-caret-down" id="active"></em>
				</button>
				<div class="dropdown-content">
					<a href="EmployeeRegistration.jsp">New Registration</a> <a href="#">Response
						Approved</a>
						<a href="EmployeeViewDirection.jsp">Search Employee</a>
						<a href="Login.jsp">Login</a>

				</div>
			</div>

			<li><a href="Aboutus3.jsp">about us</a></li>
		</ul>
	</div>

	</div>	





<div id="#mainform">
		<br> <br>

		<div class="container" style="background-color:#ddd";>
			<center>
				<h1 style="color:black";"padding:50%"; "margin-top:50%"; "height:20%";>
					
				</h1>
				<hr>
				
				
		

   <a href="EmployeeView.jsp">Display All Employees Data</a> 
    <br><br><br><br>
	<form action="SingleEmployeeView.jsp" >


Filter:<input type="text" name="searchElement" id="searchEle" onkeyup="return sendInfo()" placeholder="EmployeeId/Salary/EmailId">



<div id="result">

</div>



			
				</div>
				</form>
				</center>
				</div>


</body>
</html>