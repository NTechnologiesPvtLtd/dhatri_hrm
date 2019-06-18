<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Emp</title>
</head>

<body>
<div id="#mainform">
<br> <br>

<div class="container" style="background-color: #ddd";>

<h1 style="color: black";"padding:50%"; "margin-top:50%"; "height:20%";>

</h1>
<hr>
             <a href="ViewManagerEmpData.jsp">Display All Employees Data</a> <br>
<br>
<br>
<br>
 

Enter EmployeeId:<input type="text" name="req" id="empId"
style="color: black";> <input type="submit" value="submit"
onclick="sendInfo()">
<div id="searchResults"></div>
</div>
</div>
</body>
</html>
