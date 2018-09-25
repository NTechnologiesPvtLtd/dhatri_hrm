<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EmployeePayslip</title>
<style>

div.headtext {
	margin-left: 25px;
	margin-right: 25px;
	align:center;
			}
div.backgrouondColor {
	background-color: AliceBlue;
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
	background-color: HoneyDew;
	margin-left: 25px;
	margin-right: 25px;
}

div.backgrouondColor3 {
	background-color: LightGray;
	margin-left: 25px;
	margin-right: 25px;
}

td.padding {
	padding-left: 2cm;
}

td.padding2 {
	padding-left: 45%;
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
	padding-left: 9cm;
}
p.parapadding {
	padding-left: 2cm;
}
div.imgpadding {
	padding-left: 17cm;
}

td.padding6{

padding-left: 12.2cm;
color:white;
font-size:20px;
}
td.padding7{
font-size:20px;	
color:white;
}
</style>
</head>
<body>

<%
double ctc=Double.parseDouble(request.getParameter("ctc"));
double basic=(40.0/100)*ctc;
double conveyance=(1.6/100)*ctc;
double hra=(20.0/100)*ctc;
double specialAllowance=(25.9/100)*ctc;
double cityCompensatoryAll=(10.0/100)*ctc;
double medical=(2.5/100)*ctc;
double professionalTax=200;
double totalDeductions=professionalTax;
double incomeTax=0.0;
double otherDeductions=0.0;
double grossSalary=ctc;
double netPay =ctc- totalDeductions;
%>
	
<div class ="imgpadding">
<img src="logo.png" alt="logo" width="210" height="100" align="center">
</div>
<br><br	>
<div class="headtext">
<table>
				<tr>
					<td>Payslip for the month of August,2018</td>
					<td class ="padding0" >No.of working Days:31</td>
				</tr>
</table>
	
</div>
	<div class="backgrouondColor">
	<table>
				<tr>
					<td><br>EmpName:<br><br></td><br><br>
					<td><input type="text" name="emploeeName">
					<td class="padding2">EmpID:<br></td>
					<td class="padding2"><input type="text" name="employeeID">
				</tr>
				<tr>
					<td>Designation:<br><br></td>
					<td><input type="text" name="desigantion">
					<td class="padding2">Bank:<br></td>
					<td class="padding2"><input type="text" name="bank">
				</tr>
				<tr>
					<td><br>Date of Joining:<br><br></td>
					<td><input type="text" name="date of joining">
					<td class="padding2">BankAccountNo:<br></td>
					<td class="padding2"><input type="text" name="bankAccountNO">
				</tr>
	</table>
	</div>
			<div class="backgrouondColor1">
			<table>
					<tr>
					<td class="padding7">Earnings</td><br>
					<td class="padding6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Deductions</td>
					</tr>
			</table>
		</div>
		
<div class="backgrouondColor2">
<table>

<tr><br><br>
<td><br>Basic:<br><br></td>
<td><input type="text" name="basic" value=<%=basic %>>
<td class="padding2"><br>ProfessionalTax:<br><br></td>
<td class="padding2"><input type="text" name="professionalTax" value="<%=professionalTax%>"></td>
</tr>

<tr>
<td><br>Conveyance:<br><br></td>
<td><input type="text" name="conveyance" value="<%=conveyance %>">
<td class="padding2"><br>IncomeTax:<br><br></td>
<td class="padding2"><input type="text" name="incomeTax" value="<%=incomeTax%>">
</tr>

<tr>
<td><br>HRA:<br><br></td>
<td><input type="text" name="hra" value="<%=hra%>">
<td class="padding2"><br>OtherDeductions:<br><br></td>
<td class="padding2"><input type="text" name="incomeTax" value=<%=otherDeductions %>"></td>
</tr>

<tr>
<td><br>CityCompensatoryAll:<br><br></td>
<td><input type="text" name="cityCompensatoryAll" value=<%=cityCompensatoryAll %>></td>
</tr>

<tr>
<td><br>SpecialAllowance:<br><br></td>
<td><input type="text" name="specialAllowance" value=<%=specialAllowance %>></td>
</tr>
				
<tr>
<td><br>Medical:<br><br></td>
<td><input type="text" name="medical" value="<%=medical%>"></td>
</tr>
</table>
</div>
		
		<div class="backgrouondColor3">
			<table>
				<tr>
					
					<td class="padding5">Total Deduction:</td>
					<td class="padding5"><input type="text"value=<%=totalDeductions %>></td>
				</tr>
				<tr>
					<td>GrossSalary:</td>
					<td><input type="text" value=<%=grossSalary %>></td>
				</tr>
				<tr>
					<td class="padding5">Net Pay:</td>
					<td class="padding5"><input type="text" name="netpay" value=<%=netPay%>></td>
				</tr>
				
		</table>
		</div>
		
		<div>
		<p class ="parapadding">@as applicable based on savings declaration by employee.<br>

		*MedicalReimbursement, CityCompensatory& Income Tax have not been deducted as per the request of the employee.</p>

			<p class ="parapadding">If any questions, mail to accounts@dhatriinfo.com <br>
			 Note: This is system generated mail.Signature not required.</p>
		</div>

	<footer>
  <p class ="aligncenter">DHATRI INFO SOLUTIONS PVT.LTD.</p>
  <p styple = "padding-left :2cm;">_______________________________________________________________________________________________________________________________________________________________________________________</p>
  <p class ="aligncenter"> Manjeera Trinity Corporate, Suite #406, KPHB Phase 3, Kukatpally, Hyderabad: 500 072, Telangana, India<br> 
			Phone: +91 40 6591 3555, 6555 7888 website: 

   <a href="www.dhatriinfo.com">
  www.dhatriinfo.com</a>.</p>
</footer>
</body>

</html>