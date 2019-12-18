package com.hrm.dao.test;

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
		employeeBean.setFirstName("aeF");
		employeeBean.setFatherName("vnrmohanrao");
		employeeBean.setLastName("valtheru");
		employeeBean.setCurrentCTC(400000);
		employeeBean.setEmployeeId("DS-00001");
		int result = dao.employeeUpdate(employeeBean);
		Assert.assertEquals(1, result);
	}
	
	
	@Test
	public void searchTest(){
		List<EmployeeBean> bean = null;
		try {
			bean = dao.search("DS-40320");
			if(bean !=null) {
				for(EmployeeBean employee: bean) {
		Assert.assertEquals("DS-40324", employee.getEmployeeId());	
		Assert.assertEquals(""
				+ ""
				+ ""
				+ ""
				+ ""
				+ ""
				+ ""
				+ ""
				+ "", employee.getFirstName());
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	
	@Test
	public void insertDataInToDBTest(){
		EmployeeBean bean =new EmployeeBean();
		bean.setEmployeeId("ds-1141");
		bean.setFirstName("monika");
		bean.setLastName("valtheru");
		bean.setMobileNumber(991291996);
		
		int result= dao.insertEmployeeData(bean);
		Assert.assertEquals(1, result);
		
		
	}

}
