<%@page import="com.hrm.bean.RequestBean"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="java.util.*"%>
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
 <div class="container-fluid col-md-12" >
 
 <%@ include file="navbar.jsp" %> 
 </div>
 
<div id="result" class="container">
<br><br><br><br><br><br><br><br><br><br><br><br><br>
	
	<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Reason ID</th>
      <th scope="col">Reason Name</th>
      <th scope="col">Reason</th>
       <th scope="col">Sender Mail</th>
        <th scope="col">Receiver Mail</th>
    </tr>
  </thead>
  <%
  HRMServicesImplementation hrm=new HRMServicesImplementation();
	List<RequestBean> std = hrm.requestSearch();
	int x=0;
for(RequestBean rs:std){
	x=x+1;
	
	
	%>
  <tbody>
    <tr>
      <th scope="row"><%= x %></th>
      <td><%=rs.getReasonId()%></td>
      <td><%=rs.getReasonName()%></td>
      <td><%=rs.getTextArea()%></td>
      <td><%=rs.getSenderMail() %></td>
      <td><%=rs.getReceiverMail()%></td>
    </tr>
    
  </tbody>
  <%
 
	}
        %>
        
</table>
	
</div>
		

<br><br><br><br><br><br>



<div class="container-fluid col-md-12" >
 
 <%@ include file="footer.jsp" %> 
 </div>
<script src="jsFiles\jquery.min.js" type="text/javascript"></script>
<script src="jsFiles\bootstrap.js" type="text/javascript"></script>
<script src="jsFiles\custom.js" type="text/javascript"></script>
<script type="text/javascript" src="jsFiles\modernizr.js"></script>
<script type="text/javascript" src="jsFiles\gaia.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 
 
</body>
</html>