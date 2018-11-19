function clearForm()
{
	var Name=document.getElementById("firstName").value;
	var EmailId=document.getElementById("emailId").value;
	var MobileNo=document.getElementById("mobileNumber").value;
	var QUERY=document.getElementById("query").value;
	if(Name==null||Name=="")
	{
	document.getElementById("errorMsg").innerHTML="please enter firstName";
	return false;
	}
	
	if(EmailId==null||EmailId=="")
	{
	document.getElementById("errorMsg5").innerHTML="please enter Email Id";
	return false;
	}
	if(MobileNo==null||MobileNo=="")
	{
	document.getElementById("errorMsg6").innerHTML="please enter Mobile No";
	return false;
	}
	
	
	if(QUERY==null||QUERY=="")
	{
	document.getElementById("errorMsg8").innerHTML="please enter QUERY";
	return false;
	}
	
}
