package com.hrm.services;

import java.util.List;

import com.hrm.bean.EmployeeBean;

public interface HRMService {
	public abstract int insertEmployeeData(EmployeeBean employeeBean);
	public abstract List<EmployeeBean> search();
	public abstract boolean login(String employeeeId, long mobileNumber);
	//public abstract EmployeeBean searchOneEmployee(String empId);
	
}

