<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function showcommentform() {  
	
    if(document.getElementById("emailTo").value=="Projectmanager"){
    	document.getElementById("emailName").value=("hello@gmail.com");
    	//document.write('hello@gmail.com');
    	
    }else{
    	document.getElementById("emailName").value=("hrmanager@gmail.com");
    }
    
    

}

</script>
</head>
<body>

<form name="myForm">
    <div id="EmailTo">
    email To: <select id="emailTo" onclick='showcommentform()'>
              <option value="Projectmanager" >Projectmanager</option>
              <option value="HrManager">HrManager</option>
              </select>
              <br>
     </div>
    <div>
    <input type="text" name="email"  id="emailName" disabled="disabled" value="hello@gmail.com">
    </div>
    <div>
    Request Type:<select>
    <option value="Leave">Leave</option>
    <option value="SalaryCertification">SalaryCertification</option>
    <option value="AdressCertification">AdressCertification</option>
    </select>
    </div>
    <div>
    Reason:<br><textarea rows="5" cols="50"></textarea>
    <input type="submit" value="Submit">
    </div>
    </form>
    
</body>
</html>