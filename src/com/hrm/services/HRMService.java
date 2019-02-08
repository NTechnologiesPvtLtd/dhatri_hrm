package com.hrm.services;

import java.util.List;

import com.hrm.bean.EmployeeBean;

public interface HRMService {
	public abstract int insertEmployeeData(EmployeeBean employeeBean);
	public abstract List<EmployeeBean> search();
	public abstract EmployeeBean search(String empid);
	public abstract boolean login(String employeeeId, long mobileNumber);
	public boolean login(String employeeeId, String password,String type);
	/*public abstract int employeeUpdate(EmployeeBean emp);
*/}
