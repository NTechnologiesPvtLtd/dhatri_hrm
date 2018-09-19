<%@page import="com.hrm.bean.EmployeeBean"%>
<%@page import="java.util.List"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		HRMService service = new HRMServicesImplementation();
		List<EmployeeBean> employeeResponse = service.search();
		if (employeeResponse != null && !employeeResponse.isEmpty()) {
	%>

	<table align="center">
		<tr>
			<th>EmployeeId</th>
			<th>FirstName</th>
		</tr>

		<%
			for (EmployeeBean employeeBean : employeeResponse) {
		%>
		<tr>
			<td><%=employeeBean.getEmployeeId()%></td>
			<td><%=employeeBean.getFirstName()%></td>
		</tr>
		<%
			}
		%>



	</table>

	<%
		} else {
			out.print("No Result Found");
		}
	%>


</body>
</html>