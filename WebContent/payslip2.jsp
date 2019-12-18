<%@page import="com.hrm.bean.PayslipBean"%>
<%@page import="com.hrm.constants.EmployeeConstants"%>
<%@page import="com.hrm.session.SharedObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.util.List"%>
	<%@ page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Iterator"%>
<%@ page import = "java.io.*,java.util.*"%>
<%@page import="com.hrm.services.HRMServicesImplementation"%>
<%@page import="com.hrm.services.HRMService"%>
<%@page import="com.hrm.bean.EmployeeBean"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" media="all" href="stylesheets/mybootstrap.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
<title>EmployeePayslip</title>
<style>
div.headtext {
	margin-left: 25px;
	margin-right: 25px;
	padding-top:25px;
	align: center;
}

div.backgrouondColor {
	background-color: #6cd9ff;
	margin-left: 25px;
	margin-right: 25px;
}

div.backgrouondColor1 {
	background-color: DimGrey;
	margin-left: 25px;
	margin-right: 25px;
}

p.alignleft {
	float: left;
}

p.alignright {
	float: right;
}

p.aligncenter {
	text-align: center;;
}

div.backgrouondColor2 {
	background-color: #b9b9b9;
	margin-left: 25px;
	margin-right: 25px;
}

div.backgrouondColor3 {
	background-color: #D3D3D3;
	margin-left: 25px;
	margin-right: 25px;
}

td.padding {
	padding-left: 25px;
	font-weight: bold;
	
}

td.padding2 {
	padding-left: 45%;
	font-weight: bold;
}

td.padding3 {
	padding-left: 366%;
}

td.padding4 {
	padding-left: 30%;
}

td.padding5 {
	padding-left: 190%;
}

td.padding0 {
	padding-left: 20cm;
}

p.parapadding {
	padding-left: 2cm;
}

div.imgpadding {
	display :block;
	margin-left:auto;
	margin-right:auto;
	padding-right: 35px;
}

td.padding6 {
	padding-left: 10cm;
	color: white;
	font-size: 20px;
}

td.padding7 {
	font-size: 20px;
	color: white;
}
td.padding8 {
	 font-weight: bold;
	
}
td.padding1 {
	 font-weight: bold;
	
}

body{
background: rgb(204,204,204);
}
page{
background:white;
display:block;
margin:0 auto;
margin-bottom:0.5cm;
box-shadow: 0 0 0.5cm rgba(0,0,0,0.5);

}
page[size="A4"]{
width :21cm;
height :29.7cm;

}

</style>
</head>
<body>
<page size ="A4">

<%
double ctc =0.0;
Object sessionObj = session.getAttribute("payslipdetails");
if (sessionObj == null) {
out.print("Invalid Id or No Data Found, Please Try Again !");
} else {
 
 PayslipBean pb = (PayslipBean) sessionObj;
           ctc=pb.getBasicSalary(); 
           
           double conveyance=(3.2/100)*ctc;
           double hra=(20.0/100)*ctc;
           double specialAllowance=(21.8/100)*ctc;
           double cityCompensatoryAll=(10.0/100)*ctc;
           double medical=(5.0/100)*ctc;
           double professionalTax=200;
           double totalDeductions=professionalTax+medical;
           double incomeTax=0.0;
           double otherDeductions=0.0;
           double grossSalary=ctc;
           double netPay =ctc-totalDeductions;

%>

<div  class ="page">

	<div class="imgpadding" align ="right">
		<img src="logo.png" alt="logo" style ="width:30%;" style ="height:15%;">
	</div>

	<div class="headtext" id="date">
		<table>
			<tr>
<td align="right" class="padding"  >Payslip for the month of: <%= new SimpleDateFormat("dd-MM-yyyy").format(new java.util.Date())%></td>
 
				<td class="padding">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No.of working Days:31</td>
			</tr>
		</table>

	</div>
	<div class="backgrouondColor">
		<table >
			<tr>
				<td class="padding"><br>EmpName:<br>
				<br></td>
				<br>
				<br>
				<td class="padding1"><%=pb.getEmployeeName()%></td>
				<td class="padding2">EmpID:<br></td>
				<td class="padding2"><%=pb.getEmployeeId() %></td>
			</tr>
			<tr>
				<td class="padding">Designation:<br>
				</td>
				<td class="padding1"><%=pb.getEmployeedesignation() %></td>
				<td class="padding2">Bank:<br></td>
				<td class="padding2"><%=pb.getBank() %></td>
			</tr>
			<tr>
				<td class="padding"><br>Date of Joining:<br>
				<br></td>
				<td class="padding1">&nbsp;<%=pb.getDoj()%></td>
				<td class="padding2">BankAccountNo:<br></td>
				<td class="padding2"><%=pb.getBankAccountno() %></td>
			</tr>
		</table>
	</div>
	<div class="backgrouondColor1">
		<table>
			<tr>
				<td class="padding7" style="padding-left:25px">Earnings</td>
				<br>
				<td class="padding6">Deductions</td>
			</tr>
		</table>
	</div>

	<div class="backgrouondColor2">
		<table>
		<tr>
		<td class="padding"><br>Basic Salary:<br>
				<br></td>
				<td class="padding1"><%=pb.getBasicSalary() %></td>
				
</tr>
			<tr>
				<br>
				<br>
				
				<td class="padding" ><br>ProfessionalTax:<br>
				<br></td>
				<td class="padding1"><%=professionalTax%></td>
				<td class="padding2"><br>IncomeTax:<br>
				<br></td>
				<td class="padding2"><%=incomeTax%></td>
			</tr>

			<tr>
				<td class="padding"><br>Conveyance:<br>
				<br></td>
				<td class="padding1"><%=conveyance%></td>
				<td class="padding2"><br>OtherDeductions:<br>
				<br></td>
				<td class="padding2"><%=otherDeductions %></td>
				
			</tr>

			<tr>
				<td class="padding"><br>HRA:<br>
				<br></td>
				<td class="padding1"><%=hra%></td>
				<td class="padding2"><br>SpecialAllowance:<br>
				<br></td>
				<td class="padding2"><%=specialAllowance %></td>
				
			</tr>

			<tr>
				<td class="padding"><br>CityCompensatoryAll:<br>
				<br></td>
				<td class="padding1"><%=cityCompensatoryAll %></td>
				<td class="padding2">Total Deduction:</td>
				<td class="padding2"><%=totalDeductions %></td>
				
			</tr>

			<tr>
				
			</tr>

			<tr>
				<td class="padding"><br>Medical:<br>
				<br></td>
				<td class="padding1"><%=medical%></td>
				
			</tr>
		</table>
	</div>

	<div class="backgrouondColor3">
		<table>
		
			<tr>
				<td class="padding">GrossSalary:</td>
				<td class="padding1"><%=grossSalary %></td>
				<td class="padding2">Net Pay:</td>
				<td class="padding2"><%=netPay%></td>
			</tr>
			
				
			

		</table>
	
	</div>

	<div>
		<p class="parapadding">
			@as applicable based on savings declaration by employee.<br>

			*MedicalReimbursement, CityCompensatory& Income Tax have not been
			deducted as per the request of the employee.
		</p>

		<p class="parapadding">
			If any questions, mail to accounts@dhatriinfo.com <br> Note:
			This is system generated mail.Signature not required.
		</p>
		
		
		
		<!-- <center>
				<input type="submit" value="Generate" />

			</center> -->
			<br>
			<br>
	</div>
</form>
	<footer>
	<p class="aligncenter">DHATRI INFO SOLUTIONS PVT.LTD.</p>
	<p style="padding-left:25px">_____________________________________________________________________________________________</p>
	<p class="aligncenter">
		Manjeera Trinity Corporate, Suite #406, KPHB Phase 3, Kukatpally,
		Hyderabad: 500 072, Telangana, India<br> Phone: +91 40 6591 3555,
		6555 7888 website: <a href="www.dhatriinfo.com">
			www.dhatriinfo.com</a>.
	</p>
	</footer>
	<%
}
%>
	</div>
	</page>
</body>

</html>