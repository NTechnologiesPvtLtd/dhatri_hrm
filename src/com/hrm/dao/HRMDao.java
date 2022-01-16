package com.hrm.dao;

import java.util.List;

import com.hrm.bean.AdminBean;
import com.hrm.bean.EmployeeBean;
import com.hrm.bean.RequestBean;

public interface HRMDao
{
	//abstract method
	public abstract int insertEmployeeData(EmployeeBean employeeBean);
	public abstract List<EmployeeBean> search();
	public abstract List<RequestBean>viewRequest();
	public abstract String getRole(String userId);
	public abstract String getMail(String userId);
	public abstract List<RequestBean>viewSenderMialId(String emailID);
	public abstract List<RequestBean>viewReceiverMialId(String emailID);

	public abstract List<EmployeeBean> search(String param) throws Exception;
	public abstract boolean login(String employeeeId, long mobileNumber);
	public abstract  int employeeUpdate(EmployeeBean emp);
	public List<EmployeeBean> searchManager(String role1);
	public List<EmployeeBean> searchManagerEmp(String manager);
	public EmployeeBean searchGmailId(String str1);
	public abstract int delete(EmployeeBean emp)throws Exception;
	int delete(String employeeId) throws Exception;
	public abstract int insertRequestData(RequestBean requestBean);

	public abstract int insertAdminData(AdminBean adminBean);
	public abstract boolean adminlogin(String username, String password);
	public abstract List<RequestBean> requestSearch();
	public abstract List<EmployeeBean> employeeSearch(String searchparam);
	
}
