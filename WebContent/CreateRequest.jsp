<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jsFiles/dropDownAjax.js">
function reason(msg){
	var minlength=50;
	
	if(msg.length<50){
		document.getElementById("message").innerHTML=<span>Please enter mininum 50 characters</span>;
	}
	
}
</script>
<style>
#reason{
height:30px;
width:180px;
}
#textArea{
width:280px;
height:60px;
}
</style>

</head>
<body style="background-color:pink;padding:5cm">

	<center><form action="#">
	<div class=emailTo>
		<div id="EmailTo">
			email To: <select id="emailTo" name="emailTo"
				onchange="getManagerList(this.value)">
				<option>Select manager</option>
				<option value="Project Manager">Projectmanager</option>
				<option value="HR Manager">HrManager</option>
				<option value="Admin">Admin</option>
			</select> <br>
			
		</div><br>

		<div id="managerOptions">
			Manager : <select>
				<option>Select name</option>
				
			</select>

		</div><br>
		
		Reason: <input type="text" id="reason" minlength="20" onkeydown="reason(this.value)"><br><br>
		TextArea: <input type="text" rows="5" id="textArea" minlength="50" placeholder="Enter text here..." onkeydown="reason(this.value)">

		<br><br>
		SenderMailId: <input type="text" id="sendermailid"><br><br>
		
		<br><br>
		<button>Send</button>
		<button>Cancel</button>
	</form></center>
	
	
</body>
</html>

