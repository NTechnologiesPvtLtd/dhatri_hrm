package com.hrm.dao;

import java.util.List;

import com.hrm.bean.EmployeeBean;

public interface HRMDao
{
	//abstract method
	public abstract int insertEmployeeData(EmployeeBean employeeBean);
	public abstract List<EmployeeBean> search();
	public abstract boolean login(String employeeeId, long mobileNumber);
	//public  int update(EmployeeBean emp);
	public int update(EmployeeBean emp);
}
