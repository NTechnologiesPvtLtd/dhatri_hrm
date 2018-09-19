package com.hrm.services;

import java.util.List;

import com.hrm.bean.EmployeeBean;

public interface HRMService {
	public abstract int insertEmployeeData(EmployeeBean employeeBean);
	public abstract List<EmployeeBean> search();
}
