package com.hrm.bean;

public class PayslipBean {
   private String employeeId;
   private String employeeName;
   private String employeedesignation;
   private String doj;
   private String bank;
   private long bankAccountno;
  
   private double basicSalary;
   
  
public String getEmployeeId() {
	return employeeId;
}
public void setEmployeeId(String employeeId) {
	this.employeeId = employeeId;
} 
public String getEmployeeName() {
	return employeeName;
}
public void setEmployeeName(String employeeName) {
	this.employeeName = employeeName;
}
public String getEmployeedesignation() {
	return employeedesignation;
}
public void setEmployeedesignation(String employeedesignation) {
	this.employeedesignation = employeedesignation;
}
public String getDoj() {
	return doj;
}
public void setDoj(String doj) {
	this.doj = doj;
}
public String getBank() {
	return bank;
}
public void setBank(String bank) {
	this.bank = bank;
}
public long getBankAccountno() {
	return bankAccountno;
}
public void setBankAccountno(long bankAccountno) {
	this.bankAccountno = bankAccountno;
}
public double getBasicSalary() {
	return basicSalary;
}
public void setBasicSalary(double basicSalary) {
	this.basicSalary = basicSalary;
}


}
