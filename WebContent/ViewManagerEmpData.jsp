<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.hrm.bean.EmployeeBean"%>
<%@page import="java.util.List"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>
<%@page import="com.hrm.bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Data</title>
</head>
<body>
<%
		HRMService service = new HRMServicesImplementation();
		List<EmployeeBean> employeeResponse = service.search();
		if (employeeResponse != null && !employeeResponse.isEmpty()) {
	%>
	

</body>
</html>