function registrationValidation()

{
    var employee=document.getElementById("employee").value;
	var firstName =document.getElementById("firstName").value;
	var lastName=document.getElementById("lastName").value;
	var fatherName=document.getElementById("fatherName").value;
	var gender=document.getElementById("gender").value;	
	var dob=document.getElementById("dob").value;
	var emailId=document.getElementById("emailId").value;
	var mobileNumber=document.getElementById("mobileNumber").value;
	var aadharNo=document.getElementById("aadharNo").value;
	var panNo=document.getElementById("panNo").value;
	var passportNo=document.getElementById("passportNo").value;
	var permanentAddress=document.getElementById("permanentAddress").value;
	var localAddress=document.getElementById("localAddress").value;
	
	var schoolName=document.getElementById("schoolName").value;
	var tenthPassedOut=document.getElementById("tenthPassedOut").value;
	var intermediateCollegeName=document.getElementById("intermediateCollegeName").value;
	var interPassedOut=document.getElementById("interPassedOut").value;
	var graduationDetails=document.getElementById("graduationDetails").value;
	var graduationPassedOut=document.getElementById("graduationPassedOut").value;
	var branch=document.getElementById("branch").value;
	var university=document.getElementById("univeristy").value;
	var companyName=document.getElementById("companyName").value;
	var role=document.getElementById("role").value;
	var noticePeriod=document.getElementById("noticePeriod").value;
	var location=document.getElementById("location").value;
	var experience=document.getElementById("experience").value;
	var currentCTC=document.getElementById("currentCTC").value;
	var bankName=document.getElementById("bankName").value;
	var bankAccNo=document.getElementById("bankAccNo").value;
	var ifscCode=document.getElementById("ifscCode").value;
	
	if(employee==null||employee=="")
		{
		document.getElementById("Employee").innerHTML="please select employee option ";
		return false;
		}
	else if(firstName==null||firstName=="")
		{
		document.getElementById("Firstname").innerHTML="please enter firstName";
		return false;
		}
	
	else if(lastName==null||lastName=="")
		{
		document.getElementById("Lastname").innerHTML="please enter lastName";
		return false;
		}
	
	
	else if(fatherName==null||fatherName=="")
	{
	document.getElementById("Fathername").innerHTML="please enter FatherName";
	return false;
	}
	
	
	
	else if(gender==null||gender=="")
		{
		document.getElementById("Gender").innerHTML="please select the gender";
		return false;
		}
	
	else if(dob==null||dob=="")
	{
	document.getElementById("DOB").innerHTML="please select your Date of Birth";
	return false;
	}	
	
	else if(emailId==null||emailId=="")
		{
		document.getElementById("Emailid").innerHTML="please enter emailId";
		return false;
		}
	else if(mobileNumber==null||mobileNumber=="")
	{
	document.getElementById("mobileno").innerHTML="please enter mobile Number";
	return false;
	}
	else if(aadharNo==null||aadharNo=="")
	{
	document.getElementById("Aadharno").innerHTML="please enter Adharnumber";
	return false;
	}
	
	else if(panNo==null||panNo=="")
	{
	document.getElementById("Panno").innerHTML="please enter Panno";
	return false;
	}
	else if(passportNo==null||passportNo=="")
	{
	document.getElementById("Passportno").innerHTML="please enter Passportno";
	return false;
	}
	
	else if(permanentAddress==null||permanentAddress=="")
	{
	document.getElementById("Permanentadd").innerHTML="please enter permanentaddress";
	return false;
	}
	
	else if(localAddress==null||localAddress=="")
	{
	document.getElementById("Localadd").innerHTML="please enter localaddress";
	return false;
	}
	
	else if(schoolName==null||schoolName=="")
	{
	document.getElementById("Schoolname").innerHTML="please enter schoolname";
	return false;
	}
	
	else if(tenthPassedOut==null||tenthPassedOut=="")
	{
	document.getElementById("Tenthpassedout").innerHTML="please enter year of passing";
	return false;
	}
	
	else if(intermediateCollegeName==null||intermediateCollegeName=="")
	{
	document.getElementById("Intercollegename").innerHTML="please enter your college name";
	return false;
	}
	
	else if(interPassedOut==null||interPassedOut=="")
	{
	document.getElementById("Interpassedout").innerHTML="please enter year of passing";
	return false;
	}
	
	else if(graduationDetails==null||graduationDetails=="None")
	{
	document.getElementById("Graduationdetails").innerHTML="please enter your graduation details";
	return false;
	}
	
	else if(graduationPassedOut==null||graduationPassedOut=="")
	{
	document.getElementById("Graduationpassedout").innerHTML="please enter year of passing";
	return false;
	}
	
	else if(branch==null||branch=="None")
	{
	document.getElementById("Branch").innerHTML="please enter lastName";
	return false;
	}
	
	else if(university==null||university=="")
	{
	document.getElementById("Univeristy").innerHTML="please enter university name";
	return false;
	}
	
	
	else if(companyName==null||companyName=="")
	{
	document.getElementById("Companyname").innerHTML="please enter your companyid";
	return false;
	}
	else if(role==null||role=="")
	{
	document.getElementById("Role").innerHTML="please enter your role";
	return false;
	}
	
	else if(noticePeriod==null||noticePeriod=="None")
	{
	document.getElementById("Noticeperiod").innerHTML="please enter your notice period";
	return false;
	}
	
	else if(location==null||location=="")
	{
	document.getElementById("Location").innerHTML="please enter your location";
	return false;
	}
	
	else if(experience==null||experience=="")
	{
	document.getElementById("Experience").innerHTML="please enter your experience";
	return false;
	}
	
	else if(currentCTC==null||currentCTC=="")
	{
	document.getElementById("Currentctc").innerHTML="please enter your current ctc";
	return false;
	}
	else if(bankName==null||bankName=="")
	{
	document.getElementById("Bankname").innerHTML="please enter your bankName";
	return false;
	}
	else if(bankAccNo==null||bankAccNo=="")
	{
	document.getElementById("Bankaccno").innerHTML="please enter your Bankaccno";
	return false;
	}
	else if(ifscCode==null||ifscCode=="")
	{
	document.getElementById("Ifsccode").innerHTML="please enter your ifscCode";
	return false;
	}
	
	else
		return true;
	}
	
	function clearForm()
	{
		document.getElementById("FirstName").innerHTML="";
		document.getElementById("LastName").innerHTML=""; 
		document.getElementById("FatherName").innerHTML="";
		document.getElementById("Gender").innerHTML="";
		document.getElementById("DOB").innerHTML="";
		document.getElementById("Emailid").innerHTML="";
		document.getElementById("mobileno").innerHTML="";
		document.getElementById("Aadharno").innerHTML="";
		document.getElementById("Panno").innerHTML="";
		document.getElementById("Passportno").innerHTML="";
		document.getElementById("Permanentadd").innerHTML=""; 
		document.getElementById("Localadd").innerHTML="";
		document.getElementById("Schoolname").innerHTML="";
		document.getElementById("Tenthpassedout").innerHTML="";
		document.getElementById("Intercollegename").innerHTML="";
		document.getElementById("Interpassedout").innerHTML="";
		document.getElementById("Graduationdetails").innerHTML="";
		document.getElementById("Graduationpassedout").innerHTML="";
		document.getElementById("Branch").innerHTML=""; 
		document.getElementById("University").innerHTML="";
		document.getElementById("Companyname").innerHTML="";
		document.getElementById("Role").innerHTML="";
		document.getElementById("Noticeperiod").innerHTML="";
		document.getElementById("Location").innerHTML="";
		document.getElementById("Experience").innerHTML="";
		document.getElementById("Currentctc").innerHTML="";
		document.getElementById("Bankname").innerHTML="";
		document.getElementById("Bankaccno").innerHTML="";
		document.getElementById("Ifsccode").innerHTML="";		

	}
	
	
	function loginValidation()
	{
		var employeeId=document.getElementById("loginId").value;
		var mobileNumber=document.getElementById("Password").value;
		var type=document.getElementById("type").value;
		if(employeeId==null||employeeId=="")
		{
		document.getElementById("errorMsg").innerHTML="please enter EmployeeId";
		return false;
		}
	else if(mobileNumber==null||mobileNumber=="")
		{
		document.getElementById("errorMsg1").innerHTML="please enter Password";
		return false;
		}
	else if(type==null||type=="Enter Given Type")
	    {
	    document.getElementById("errorMsg2").innerHTML="Enter Given Type";
	    return false;
	    }
		
	else
		return true;
	}
	function clearForm()
	{
		document.getElementById("errorMsg").innerHTML="";
		document.getElementById("errorMsg1").innerHTML="";
		document.getElementById("errorMsg2").innerHTML="";
	}