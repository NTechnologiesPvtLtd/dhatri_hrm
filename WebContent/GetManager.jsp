<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.hrm.bean.EmployeeBean"%>
   
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jsFiles/dropDownAjax.js">
   
    </script>

</head>
<body>
Manager : 
<select id="managerListId" onchange="getManagerMailId(this.value)">
<% String s1=null;%>
<%
String str=request.getParameter("q"); 
SharedObject.setSession(request.getSession());
HRMService hrmService=new HRMServicesImplementation();
List<EmployeeBean> manager= hrmService.searchManager(str);
Iterator<EmployeeBean> itr=manager.iterator();
while(itr.hasNext())
{       
	
	EmployeeBean bean=itr.next();
	 s1=bean.getFirstName();
%>
<option value="<%=s1%>"><%=s1 %></option>
<%
}
%>
</select>
<div id="managerEmailId"> 
  </div>
</body>
</html>