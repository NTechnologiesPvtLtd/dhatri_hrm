/**
 * 
 */
package com.hrm.services;

import java.util.List;

import com.hrm.bean.EmployeeBean;
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
	public EmployeeBean search(String empid)
	{
		
		return hrmDao.search(empid);
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
}
