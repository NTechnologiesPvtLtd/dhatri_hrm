package com.hrm.dao.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import com.hrm.bean.EmployeeBean;
import com.hrm.dao.HRMDao;
import com.hrm.dao.HRMDaoImplementation;

public class HRMDaoTest {
	
	static HRMDao dao = new HRMDaoImplementation();
	
	@Test
	public void employeeUpdateTest(){
		EmployeeBean employeeBean = new EmployeeBean();
		employeeBean.setLastName("Raj");
		employeeBean.setCurrentCTC(400000);
		employeeBean.setEmployeeId("DS-0001");
		int result = dao.employeeUpdate(employeeBean);
		Assert.assertEquals(1, result);
	}
	
	
	@Test
	public void searchTest(){
		List<EmployeeBean> bean = null;
		try {
			bean = dao.search("DS-0720");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	
	@Test
	public void insertDataInToDBTest(){
		EmployeeBean bean =new EmployeeBean();
		bean.setEmployeeId("ds-1140");
		bean.setFirstName("Narsigh");
		bean.setLastName("Mahankali");
		bean.setMobileNumber(970042372);
		
		int result= dao.insertEmployeeData(bean);
		Assert.assertEquals(1, result);
		
		
	}

}
