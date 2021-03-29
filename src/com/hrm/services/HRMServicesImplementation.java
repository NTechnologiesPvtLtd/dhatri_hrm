/**
 * 
 */
package com.hrm.services;

import java.util.List;

import com.hrm.bean.AdminBean;
import com.hrm.bean.EmployeeBean;
import com.hrm.bean.RequestBean;
import com.hrm.constants.EmployeeConstants;
import com.hrm.dao.HRMDao;
import com.hrm.dao.HRMDaoImplementation;
import com.hrm.session.SharedObject;

/**
 * @author LADDU
 *
 */
public class HRMServicesImplementation implements HRMService {
	private static final String String = null;
	static HRMDao hrmDao=new HRMDaoImplementation();
	
	@Override
	public int insertEmployeeData(EmployeeBean employeeBean) 
	{
		
		return hrmDao.insertEmployeeData(employeeBean);
	}

	@Override
	public List<EmployeeBean> search() 
	{
		
		return hrmDao.search();
	}
	@Override
	public List<EmployeeBean> search(String param)throws Exception
	{
		
		return hrmDao.search(param);
	}
	public boolean login(String employeeId,long mobileNumber){
		
		boolean flag=hrmDao.login(employeeId, mobileNumber);
		

		if(flag){
		SharedObject.putInToSession(EmployeeConstants.EMPLOYEE_ID, employeeId);
			}
			else{
			SharedObject.putInToSession(EmployeeConstants.ERROR_MSG_UI, "Invalid Credentials");
			}

		
	return flag;
	}

	@Override
	public int employeeUpdate(EmployeeBean emp) {
		
		return hrmDao.employeeUpdate(emp);
	}

	@Override
	public List<EmployeeBean> searchManager(java.lang.String role1) {
		// TODO Auto-generated method stub
		return hrmDao.searchManager(role1);
	}

	@Override
	public EmployeeBean searchGmailId(java.lang.String str1) {
		// TODO Auto-generated method stub
		return hrmDao.searchGmailId(str1);
	}


	
	public List<EmployeeBean> searchManagerEmp(java.lang.String Manager) {
		// TODO Auto-generated method stub
		return hrmDao.searchManagerEmp(Manager);
	}

	@Override
	public int insertRequestData(RequestBean requestBean) {
		// TODO Auto-generated method stub
		return hrmDao.insertRequestData(requestBean);
	}





	/*
	 * @Override public int insertAdminData(AdminBean adminBean) { // TODO
	 * Auto-generated method stub return hrmDao.insertAdminData(adminBean); }
	 * 
	 */



	@Override
	public boolean adminlogin(String adminid,String password) {
		boolean flag=hrmDao.adminlogin(adminid, password);

		if(flag){
			SharedObject.putInToSession(EmployeeConstants.ADMINID, adminid);
			}
			else{
				SharedObject.putInToSession(EmployeeConstants.ERROR_MSG_UI, "Invalid Credentials");
			}

		
	return flag;
	}
}
