function registrationValidation()
{
	var fName=document.getElementById("firstName").value;
	var lName=document.getElementById("lastName").value;
	var faName=document.getElementById("fatherName").value;
	var gender=document.getElementById("gender").value;
	var dob=document.getElementById("dob").value;
	var email=document.getElementById("emailId").value;
	var mobileid=document.getElementById("mobileNumber").value;
	var adhar=document.getElementById("aadharNo").value;
	var permanentadd=document.getElementById("permanentAddress").value;
	var localadd=document.getElementById("localAddress").value;
	var schoolname=document.getElementById("schoolName").value;
	var tenthpassedout=document.getElementById("tenthPassedOut").value;
	var collegename=document.getElementById("intermediateCollegeName").value;
	var interpassedout=document.getElementById("interPassedOut").value;
	var graduation=document.getElementById("graduationDetails").value;
	var graduationpassedout=document.getElementById("graduationPassedOut").value;
	var branch=document.getElementById("branch").value;
	
	var companyid=document.getElementById("companyName").value;
	var roleid=document.getElementById("role").value;
	var notice=document.getElementById("noticePeriod").value;
	var location=document.getElementById("location").value;
	var experience=document.getElementById("experience").value;
	var currentctc=document.getElementById("currentCTC").value;
	var expectedctc=document.getElementById("expectedCTC").value;
	if(fName==null||fName=="")
		{
		document.getElementById("errorMsg").innerHTML="please enter firstName";
		return false;
		}
	
	else if(lName==null||lName=="")
		{
		document.getElementById("errorMsg1").innerHTML="please enter lastName";
		return false;
		}
	
	
	else if(faName==null||faName=="")
	{
	document.getElementById("errorMsg2").innerHTML="please enter FatherName";
	return false;
	}
	
	
	
	else if(gender==null||gender=="")
		{
		document.getElementById("errorMsg3").innerHTML="please select the gender";
		return false;
		}
	
	else if(dob==null||dob=="")
	{
	document.getElementById("errorMsg4").innerHTML="please select the dob";
	return false;
	}	
	
	else if(email==null||email=="")
		{
		document.getElementById("errorMsg5").innerHTML="please enter emailId";
		return false;
		}
	else if(mobileid==null||mobileid=="")
	{
	document.getElementById("errorMsg6").innerHTML="please enter mobile Number";
	return false;
	}
	else if(adhar==null||adhar=="")
	{
	document.getElementById("errorMsg7").innerHTML="please enter Adharnumber";
	return false;
	}
	
	
	else if(permanentadd==null||permanentadd=="")
	{
	document.getElementById("errorMsg8").innerHTML="please enter permanentaddress";
	return false;
	}
	
	else if(localadd==null||localadd=="")
	{
	document.getElementById("errorMsg9").innerHTML="please enter localaddress";
	return false;
	}
	
	else if(schoolname==null||schoolname=="")
	{
	document.getElementById("errorMsg10").innerHTML="please enter schoolname";
	return false;
	}
	
	else if(tenthpassedout==null||tenthpassedout=="")
	{
	document.getElementById("errorMsg11").innerHTML="please enter year of passing";
	return false;
	}
	
	else if(collegename==null||collegename=="")
	{
	document.getElementById("errorMsg12").innerHTML="please enter your collage name";
	return false;
	}
	
	else if(interpassedout==null||interpassedout=="")
	{
	document.getElementById("errorMsg13").innerHTML="please enter year of passing";
	return false;
	}
	
	else if(graduation==null||graduation=="None")
	{
	document.getElementById("errorMsg14").innerHTML="please enter your graduation details";
	return false;
	}
	
	else if(graduationpassedout==null||graduationpassedout=="")
	{
	document.getElementById("errorMsg15").innerHTML="please enter year of passing";
	return false;
	}
	
	else if(branch==null||branch=="None")
	{
	document.getElementById("errorMsg16").innerHTML="please enter lastName";
	return false;
	}
	
	else if(university==null||university=="")
	{
	document.getElementById("errorMsg17").innerHTML="please enter university name";
	return false;
	}
	
	
	else if(companyid==null||companyid=="")
	{
	document.getElementById("errorMsg18").innerHTML="please enter your companyid";
	return false;
	}
	else if(roleid==null||roleid=="")
	{
	document.getElementById("errorMsg19").innerHTML="please enter your role";
	return false;
	}
	
	else if(notice==null||notice=="None")
	{
	document.getElementById("errorMsg20").innerHTML="please enter your notice period";
	return false;
	}
	
	else if(location==null||location=="")
	{
	document.getElementById("errorMsg21").innerHTML="please enter your location";
	return false;
	}
	
	else if(experience==null||experience=="")
	{
	document.getElementById("errorMsg22").innerHTML="please enter your experience";
	return false;
	}
	
	else if(currentctc==null||currentctc=="")
	{
	document.getElementById("errorMsg23").innerHTML="please enter your current ctc";
	return false;
	}
	
	else if(expectedctc==null||expecteddctc=="")
	{
	document.getElementById("errorMsg24").innerHTML="please enter your expected ctc";
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
		document.getElementById("errorMsg3").innerHTML="";
		document.getElementById("errorMsg4").innerHTML="";
		document.getElementById("errorMsg5").innerHTML="";
		document.getElementById("errorMsg6").innerHTML="";
		document.getElementById("errorMsg7").innerHTML="";
		document.getElementById("errorMsg8").innerHTML="";
		document.getElementById("errorMsg9").innerHTML="";
		document.getElementById("errorMsg10").innerHTML=""; 
		document.getElementById("errorMsg11").innerHTML="";
		document.getElementById("errorMsg12").innerHTML="";
		document.getElementById("errorMsg13").innerHTML="";
		document.getElementById("errorMsg14").innerHTML="";
		document.getElementById("errorMsg15").innerHTML="";
		document.getElementById("errorMsg16").innerHTML="";
		document.getElementById("errorMsg17").innerHTML="";
		document.getElementById("errorMsg18").innerHTML=""; 
		document.getElementById("errorMsg19").innerHTML="";
		document.getElementById("errorMsg20").innerHTML="";
		document.getElementById("errorMsg21").innerHTML="";
		document.getElementById("errorMsg22").innerHTML="";
		document.getElementById("errorMsg23").innerHTML="";
		document.getElementById("errorMsg24").innerHTML="";
	}