function getManagerList(str) {
	var xmlhttp;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("managerOptions").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "GetManager.jsp?q=" + str, true);
	xmlhttp.send();
}

function getManagerMailId(str) {
	var xmlhttp;
	if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	} else {// code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			document.getElementById("managerEmailId").innerHTML = xmlhttp.responseText;
		}
	}
	xmlhttp.open("GET", "GetMailId.jsp?m=" + str, true);
	xmlhttp.send();
}
