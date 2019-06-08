<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jsFiles/dropDownAjax.js"> </script>

</head>
<body>
	<form action="#">
		<div id="EmailTo">
			email To: <select id="emailTo" name="emailTo"
				onchange="getManagerList(this.value)">
				<option>Select manager</option>
				<option value="Project Manager">Projectmanager</option>
				<option value="HR Manager">HrManager</option>
				<option value="Admin">Admin</option>
			</select> <br>
		</div>

		<div id="managerOptions">
			Manager : <select>
				<option>Select name</option>
				
			</select>

		</div>
	</form>
</body>
</html>

