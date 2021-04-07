<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.hrm.session.SharedObject"%>
<%@page import="java.util.*" %>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>
<%@page import="com.hrm.bean.*"%>
 <%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@page import="com.hrm.dao.HRMDaoImplementation"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Request</title>
<link href="stylesheets\bootstrap.css" rel="stylesheet" />
<link href="stylesheets\newstyle.css" rel="stylesheet"/>
<link href="stylesheets\custom.css" rel="stylesheet"/>
<link href='https://fonts.googleapis.com/css?family=Cambo|Poppins:400,600' rel='stylesheet' type='text/css'>
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">

<style>

.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:  ;
   color: white;
   text-align: center;
}

body
{

}
</style>


</head>
<body>
<%

Object obj=SharedObject.getFromSession(EmployeeConstants.EMPLOYEE_ID);

String userId="";
if(obj !=null){
	userId=(String)obj;
}
	

%>

<nav class="navbar navbar-default navbar-fixed-top">
        <!-- if you want to keep the navbar hidden you can add this class to the navbar "navbar-burger"-->
        <div class="container">
            <div class="navbar-header">
                <button id="menu-toggle" type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example">https://us02web.zoom.us/meeting/attendee/tZApfuyqpzMuGNyYYpaDGAJiIILBEmV45FqO/ics?user_id=Klu9nog
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
                        <a href="AdminLogOutServlet" class="btn btn-danger btn-fill">Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </nav>
    




<br><br><br><br><br><br><br>
<div>
<%
	HRMServicesImplementation hrms= new HRMServicesImplementation();
String pm="projectmanager";
	List<RequestBean> lr = hrms.ViewRequest();
	String role=hrms.getRole(userId);
	String mail=hrms.getMail(userId);
	
if(role.equals(pm)){
	List<RequestBean> lrr=hrms.ViewReceiverMialId(mail);
	%>
	<table class="table table-bordered table-striped">
	
	<tr><td id="header" colspan="5"><h3 style="text-align:center;">Recieved requests</h3></tr>
	<tr><th>reasonId</th><th>reasonname </th><th>Text area</th><th>sender mail id </th><th>reciever mail id</th></tr>
	<% 
	for(RequestBean rb:lrr){
		%> 
		<tr><td><%= rb.getReasonId() %></td><td><%=  rb.getReasonName() %></td><td><%=  rb.getTextArea() %></td><td><%= rb.getSenderMail() %></td><td><%= rb.getRecieverMail() %></td></tr>
<% 	}%>
	
	</table>
<% }
else {
	List<RequestBean> lrs=hrms.ViewSenderMialId(mail); 
	%>
	<table class="table table-bordered table-striped">
	
	<tr><td id="header" colspan="5"><h3 style="text-align:center;">Requests sent</h3></tr>
	<tr><th>textarea</th><th>sendermail</th><th>receivermail</th><th>resaonname</th><th>reasonId</th></tr>
	<% 
	for(RequestBean rb:lrs){
		%> 
		<tr><td><%= rb.getTextArea() %></td><td><%= rb.getSenderMail() %></td><td><%= rb.getRecieverMail() %></td><td><%=rb.getReasonName() %></td><td><%= rb.getReasonId() %></td></tr>
<% 	}%>
</table>
<% }%>

</div>

</body>
</html>