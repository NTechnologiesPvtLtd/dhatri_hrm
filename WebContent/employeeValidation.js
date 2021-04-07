
function clearForm()
	{ 	
		
		document.getElementById("Employee").innerHTML="";
		document.getElementById("Firstname").innerHTML="";
		document.getElementById("Lastname").innerHTML=""; 
		document.getElementById("Fathername").innerHTML="";
		document.getElementById("Gender").innerHTML="";
		document.getElementById("DOB").innerHTML="";
		document.getElementById("Emailid").innerHTML="";
		document.getElementById("mobileno").innerHTML="";
		document.getElementById("amobileno").innerHTML="";
		document.getElementById("Aadharno").innerHTML="";
		document.getElementById("Panno").innerHTML="";
		document.getElementById("Passportno").innerHTML="";
		document.getElementById("Permanentadd").innerHTML=""; 
		document.getElementById("Localadd").innerHTML="";
		document.getElementById("Schoolname").innerHTML="";
		document.getElementById("Tenthpassedout").innerHTML="";
		document.getElementById("Intercollegename").innerHTML="";
		document.getElementById("Interpassedout").innerHTML="";
		
		document.getElementById("Companyname").innerHTML="";
		document.getElementById("Role").innerHTML="";
		document.getElementById("Noticeperiod").innerHTML="";
		document.getElementById("Location1").innerHTML="";
		document.getElementById("Experience").innerHTML="";
		document.getElementById("Currentctc").innerHTML="";
		document.getElementById("Bankname").innerHTML="";
		document.getElementById("Bankaccno").innerHTML="";
		document.getElementById("Ifsccode").innerHTML="";
		document.getElementById("Graduationdetails").innerHTML="";
		document.getElementById("Graduationpassedout").innerHTML="";
		document.getElementById("Branch").innerHTML=""; 
		document.getElementById("University").innerHTML="";

	}
	
function show()
{
	var role=document.getElementById("role").value;
	if(role=="ProjectManager")
	{
		document.getElementById("manager").style.display='none';
	
	}
	else{
		document.getElementById("manager").style.display='block';
	}
}

function registrationValidation()

{
 
    var employee1=document.getElementById("employee1").checked;
   var employee2=document.getElementById("employee2").checked;

	var firstName =document.getElementById("firstName").value;
	var LastName=document.getElementById("lastName").value;
	var fatherName=document.getElementById("fatherName").value;
	var male=document.getElementById("male").checked;	
    var female=document.getElementById("female").checked;
	var others=document.getElementById("others").checked;
	var dob=document.getElementById("dob").value;
	var emailId=document.getElementById("emailId").value;
	var mobileNumber=document.getElementById("mobileNumber").value;
	
	var alternatemobileNumber=document.getElementById("alternatemobileNumber").value;
	var aadharNo=document.getElementById("aadharNo").value;
	var panNo=document.getElementById("panNo").value;
	var passportNo=document.getElementById("passportNo").value;
	var permanentAddress=document.getElementById("permanentAddress").value;
	var localAddress=document.getElementById("localAddress").value;
	
	var schoolName=document.getElementById("schoolName").value;
	var tenthPassedOut=document.getElementById("tenthPassedOut").value;
	var intermediateCollegeName=document.getElementById("intermediateCollegeName").value;
	var interPassedOut=document.getElementById("interPassedOut").value;
	
   var companyName=document.getElementById("companyName").value;
	var role=document.getElementById("role").value;
	
	var noticeperiod = document.getElementById("noticePeriod").value;
	var location1 = document.getElementById("location1").value;
	var experience = document.getElementById("experience").value;
	var currentCTC = document.getElementById("currentCTC").value;
	var bankName = document.getElementById("bankName").value;
	var bankAccNo = document.getElementById("bankAccNo").value;
	var ifscCode = document.getElementById("ifscCode").value;
	var graduationDetails=document.getElementById("graduationDetails").value;
	
	var graduationPassedOut=document.getElementById("graduationPassedOut").value;

	var branch=document.getElementById("branch").value;

	var university=document.getElementById("university").value;
	

	
	if(employee1==false&&employee2==false)	
{
	document.getElementById("Employee").innerHTML="please select atleast one option";
	return false;
}
 else if(firstName==null||firstName=="")
{
	
	document.getElementById("Firstname").innerHTML="plese enter the firstname"
	return false;
}
else if(LastName==null||LastName=="")
{
	
	document.getElementById("Lastname").innerHTML="plese enter the lastname"
	return false;
}
else if(fatherName==null||fatherName=="")
{
	document.getElementById("Fathername").innerHTML="plese enter the fathername"
	return false;
}
else if(male==false&&female==false&&others==false)
{
	document.getElementById("Gender").innerHTML="plese select atleat one value"
	return false;
}
else if(!Date.parse(dob))
{
	document.getElementById("DOB").innerHTML="plese select the Date"
	return false;
}
else if(emailId==null||emailId=="")
{
	
	document.getElementById("Emailid").innerHTML="plese enter the lastname"
	return false;
}
else if(mobileNumber==null||mobileNumber=="")
{
	document.getElementById("mobileno").innerHTML="plese enter the mobile number"
	return false;
}

else if(alternatemobileNumber==null||alternatemobileNumber=="")
{
	
	document.getElementById("amobileno").innerHTML="plese enter the alternatemobilenumber"
	return false;
}
else if(aadharNo==null||aadharNo=="")
{
	document.getElementById("Aadharno").innerHTML="plese enter the Aadhar number"
	return false;
}
else if(panNo==null||panNo=="")
{
	document.getElementById("Panno").innerHTML="plese enter pan number";
	return false;
}
else if(passportNo==null||passportNo=="")
{
	document.getElementById("Passportno").innerHTML="plese enter passport number";
	return false;
}
	
	else if(permanentAddress==null||permanentAddress=="")
{
	document.getElementById("Permanentadd").innerHTML="plese enter permanentAddress";
	return false;
}
else if(localAddress==null||localAddress=="")
{
	
	document.getElementById("Localadd").innerHTML="plese enter localAddress ";
	return false;
}
	
else if(schoolName==null||schoolName=="")
{
	
	document.getElementById("Schoolname").innerHTML="plese enter school name ";
	return false;
}
else if(tenthPassedOut==null||tenthPassedOut=="")
{
	
	document.getElementById("Tenthpassedout").innerHTML="plese enter Tenthpassedout ";
	return false;
}
else if(intermediateCollegeName==null||intermediateCollegeName=="")
{
	
	document.getElementById("Intercollegename").innerHTML="plese enter Intercollegename ";
	return false;
}
else if(interPassedOut==null||interPassedOut=="")
{
	
	document.getElementById("Interpassedout").innerHTML="plese enter Interpassedout";
	return false;
}
else if(graduationDetails=="None")
{
	document.getElementById("Graduationdetails").innerHTML="please select the graduation";
	return false;
}
else if(graduationPassedOut==null||graduationPassedOut=="")
{
	document.getElementById("Graduationpassedout").innerHTML="please enter passed out year";
	return false;
}
else if(branch=='None')
{
	document.getElementById("Branch").innerHTML="please select the branch";
	return false;
}
else if(university==null||university=="")
{
	document.getElementById("University").innerHTML="please select the university ";
	return false;
}

else if(companyName==null||companyName=="")
{
	document.getElementById("Companyname").innerHTML="plese enter companyname";
	
	return false;
}

else if(role=="None")
	{
		document.getElementById("Role").innerHTML="plese select the role";
		return false;
	}
	
else if(noticeperiod==null||noticeperiod=="")
{
	document.getElementById("Noticeperiod").innerHTML="plese enter Noticeperiod";
	return false;
}	

else if(location1==null||location1=="")
{
	document.getElementById("Location1").innerHTML="plese enter Location";
	return false;
}
else if(experience==null||experience=="")
{
	document.getElementById("Experience").innerHTML="plese enter Experience";
	return false;
}
else if(currentCTC==null||currentCTC=="")
{
	document.getElementById("Currentctc").innerHTML="plese enter Currentctc";
	return false;
}
else if(bankName==null||bankName=="")
{
	document.getElementById("Bankname").innerHTML="plese enter Bankname";
	return false;
}
else if(bankAccNo==null||bankAccNo=="")
{
	document.getElementById("Bankaccno").innerHTML="plese enter Bankaccno";
	return false;
}
else if(ifscCode==null||ifscCode=="")
{
	document.getElementById("Ifsccode").innerHTML="plese enter Ifsccode";
	return false;
}

	
 
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
	function clearForm1()
	{
		document.getElementById("errorMsg").innerHTML="";
		document.getElementById("errorMsg1").innerHTML="";
		document.getElementById("errorMsg2").innerHTML="";
	}