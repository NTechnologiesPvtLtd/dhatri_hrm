/**
 * 
 */
package com.hrm.services;

import com.hrm.bean.EmployeeBean;
import com.hrm.dao.HRMDao;
import com.hrm.dao.HRMDaoImplementation;

/**
 * @author LADDU
 *
 */
public class HRMServicesImplementation implements HRMService {
	static HRMDao hrmDao=new HRMDaoImplementation();

	@Override
	public int insertEmployeeData(EmployeeBean employeeBean) {
		// TODO Auto-generated method stub
		return hrmDao.insertEmployeeData(employeeBean);
	}

}
