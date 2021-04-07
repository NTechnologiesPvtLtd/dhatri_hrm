<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.hrm.bean.EmployeeBean"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dhatsol</title>
</head>
<body>


    
    
    
    <div class="container">
    	<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First Name</th>
      <th scope="col">Last Name</th>
      <th scope="col">Father Name</th>
       
    </tr>
  </thead>
  <%
  String searchparam = request.getParameter("val");
  HRMServicesImplementation hrm=new HRMServicesImplementation();
	List<EmployeeBean> std = hrm.employeeSearch(searchparam);
	int x=0;
	for(EmployeeBean rs : std){
	x=x+1;
   
	%>
  <tbody>
    <tr>
      <th scope="row"><%= x %></th>
      <td><%=rs.getFirstName()%></td>
      <td><%=rs.getLastName()%></td>
      <td><%=rs.getFatherName()%></td>
      
    </tr>
    
  </tbody>
  <%
 
	}
        %>
        
</table>
	
</div>
   

</body>
</html>