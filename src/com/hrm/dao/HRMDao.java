package com.hrm.dao;

import java.util.List;

import com.hrm.bean.EmployeeBean;

public interface HRMDao
{
	//abstract method
	public abstract int insertEmployeeData(EmployeeBean employeeBean);
	public abstract List<EmployeeBean> search();
	public abstract EmployeeBean search(String empid);
	public abstract boolean login(String employeeeId, long mobileNumber);
	public abstract  int employeeUpdate(EmployeeBean emp);
	public List<EmployeeBean> searchManager(String role1);
	public List<EmployeeBean> searchManagerEmp(String manager);
	public EmployeeBean searchGmailId(String str1);
	//public abstract int delete(EmployeeBean emp)throws Exception;
	//int delete(String employeeId) throws Exception;
	
}
