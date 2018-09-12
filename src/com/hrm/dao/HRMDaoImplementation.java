package com.hrm.dao;
import java.sql.*;

import com.hrm.bean.*;
import com.hrm.businesslogic.EmployeeIdGenerator;
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
		String query="insert into table values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try
		{
			pstmt=con.prepareStatement(query);
		pstmt.setString(1,EmployeeIdGenerator.generateId());
		pstmt.setString(2,employeeBean.getFirstName());
		pstmt.setString(3,employeeBean.getLastName());
		pstmt.setString(4,employeeBean.getFatherName());
		pstmt.setString(5,employeeBean.getGender());
		pstmt.setString(6,employeeBean.getDob().toString());
		pstmt.setString(7,employeeBean.getEmailId());
		pstmt.setLong(8,employeeBean.getMobileNumber());
		pstmt.setLong(9,employeeBean.getAadharNo());
		pstmt.setString(10,employeeBean.getPermanentAddress());
		pstmt.setString(11,employeeBean.getLocalAddress());
		pstmt.setString(12,employeeBean.getSchoolName());
		pstmt.setInt(13, employeeBean.getTenthPassedOut());
		pstmt.setString(14,employeeBean.getIntermediateCollegeName());
		pstmt.setInt(15,employeeBean.getInterPassedOut());
		pstmt.setString(16,employeeBean.getGraduationDetails());
		pstmt.setInt(17,employeeBean.getGraduationPaseedOut());
		pstmt.setString(18,employeeBean.getBranch());
		pstmt.setString(19,employeeBean.getUniversity());
		pstmt.setString(20,employeeBean.getCompanyName());
		pstmt.setString(21,employeeBean.getRole());
		pstmt.setInt(22,employeeBean.getNoticePeriod());
		pstmt.setString(23,employeeBean.getLocation());
		pstmt.setString(24,employeeBean.getExperience());
		pstmt.setDouble(25,employeeBean.getCurrentCTC());
		pstmt.setDouble(26,employeeBean.getExpectedCTC());
		result=pstmt.executeUpdate();
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}		
		return result;
		
	}
}