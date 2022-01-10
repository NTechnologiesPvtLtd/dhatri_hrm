/**
 * 
 */
function showcommentform() {
			var data = "EmployeeId:<input type='text' name='employeeId'>";

			document.getElementById('location').innerHTML = data;
		}

		function showcommentform1() {
			document.getElementById('location').innerHTML = "";
		}

function loginValidation() {
		var employeeId = document.getElementById("loginId").value;
		var mobileNumber = document.getElementById("Password").value;
		var type = document.getElementById("type").value;
		if (employeeId == null || employeeId == "") {
			alert("Please enter EmployeeId");
			//document.getElementById("errorMsg").innerHTML = "please enter EmployeeId";
			return false;
		} else if (mobileNumber == null || mobileNumber == "") {
			alert("Please enter Password");
			//document.getElementById("errorMsg1").innerHTML = "please enter Password";
			return false;
		} else if (type == "" || type == "None") {
			alert("Please enter given type");
			//document.getElementById("errorMsg2").innerHTML = "Enter Given Type";
			return false;
		}

		else
			return true;
	}
	
	function clearForm() {
		document.getElementById("errorMsg").innerHTML = "";
		document.getElementById("errorMsg1").innerHTML = "";
		document.getElementById("errorMsg2").innerHTML = "";
	}