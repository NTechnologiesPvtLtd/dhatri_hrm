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
	public void insertDataInToDBTest(){
		EmployeeBean employeebean =new EmployeeBean();
		employeebean.setEmployeeId("ds-1140");
		employeebean.setFirstName("Narsingh");
		employeebean.setLastName("Mahankali");
		employeebean.setFatherName("Mahankali");
		employeebean.setGender("Male");
		employeebean.setDob("01/07/2021");
		employeebean.setEmailId("test@mail.com");
		employeebean.setPermanentAddress("hyd");
		employeebean.setLocalAddress("hyd");
		
		employeebean.setSchoolName("ssc");
		employeebean.setIntermediateCollegeName("bie");
		employeebean.setGraduationDetails("Bech");
		employeebean.setBranch("cse");
		employeebean.setUniversity("jntu");

		employeebean.setCompanyName("cgi");
		employeebean.setRole("SSE");
		employeebean.setManager("100");
		employeebean.setLocation("Hyd");
		employeebean.setExperience("7.5");
		
		int result= dao.insertEmployeeData(employeebean);
		Assert.assertEquals(1, result);
		
	}
	
	@Test
	public void checkSearchMethod() {
		String employeeId = "ds-1140";
		try {
			List<EmployeeBean> results = dao.search(employeeId);
			if(null != results && !results.isEmpty()) {
				for(EmployeeBean bean : results) {
					if(bean !=null) {
						Assert.assertEquals("hyd", bean.getLocalAddress());
					}
				}
			}else {
				Assert.assertFalse(false);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}











