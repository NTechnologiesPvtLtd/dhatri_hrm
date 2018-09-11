package com.hrm.dao;
import java.sql.*;

import com.hrm.bean.*;
import com.hrm.db.connections.MySqlDBConnection;


public class HRMDaoImplementation implements HRMDao {
	
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	
	public HRMDaoImplementation(){
		con=MySqlDBConnection.getInstance();
		}
	@Override
	public int insertEmployeeData(EmployeeBean employeeBean) {
		int result=0;
		String query="insert into table values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try
		{
		pstmt.setString(1,employeeBean.getEmployeeId());
		pstmt.setString(2,employeeBean.getFirstName());
		pstmt.setString(3,employeeBean.getLastName());
		pstmt.setString(4,employeeBean.getGender());
		pstmt.setString(5,employeeBean.getDob().toString());
		pstmt.setString(6,employeeBean.getEmailId());
		pstmt.setLong(7,employeeBean.getMobileNumber());
		pstmt.setLong(8,employeeBean.getAadharNo());
		pstmt.setString(9,employeeBean.getPermanentAddress());
		pstmt.setString(10,employeeBean.getLocalAddress());
		pstmt.setString(11,employeeBean.getSchoolName());
		pstmt.setString(12,employeeBean.getIntermediateCollegeName());
		pstmt.setString(13,employeeBean.getGraduationDetails());
		pstmt.setString(14,employeeBean.getBranch());
		pstmt.setString(15,employeeBean.getCompanyName());
		pstmt.setString(16,employeeBean.getRole());
		pstmt.setInt(17,employeeBean.getNoticePeriod());
		pstmt.setString(18,employeeBean.getLocation());
		pstmt.setString(19,employeeBean.getExperience());
		pstmt.setDouble(20,employeeBean.getCurrentCTC());
		pstmt.setDouble(21,employeeBean.getExpectedCTC());
		result=pstmt.executeUpdate(query);
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}		
		return result;
		
	}
}