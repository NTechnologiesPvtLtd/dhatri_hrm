package com.hrm.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hrm.bean.EmployeeBean;
import com.hrm.businesslogic.EmployeeIdGenerator;
import com.hrm.constants.EmployeeConstants;
import com.hrm.db.connections.MySqlDBConnection;
import com.hrm.session.SharedObject;


public class HRMDaoImplementation implements HRMDao {
	
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet resultSet;
	
	public HRMDaoImplementation(){
		con=MySqlDBConnection.getInstance();
		}
	@Override
	public int insertEmployeeData(EmployeeBean employeeBean) {
		int result=0;
		String query="insert into employeebean values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try
		{
			pstmt=con.prepareStatement(query);
			String employeeId=EmployeeIdGenerator.getEmployeeId();
			SharedObject.putInToSession(EmployeeConstants.EMPLOYEE_ID, employeeId);
		pstmt.setString(1,employeeId);
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
		pstmt.setInt(17,employeeBean.getGraduationPassedOut());
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
	@Override
	public List<EmployeeBean> search() {
		List<EmployeeBean> listOfEmployee = new ArrayList<>();
		String query="select EmployeeId,FirstName,FatherName,Gender,EmailId,MobileNo,AadharNo from employeebean";
		
		try {
			pstmt = con.prepareStatement(query);
			resultSet=pstmt.executeQuery();
			EmployeeBean employeeBean=null;
			while(resultSet.next()){
				employeeBean = new EmployeeBean();
				employeeBean.setEmployeeId(resultSet.getString(1));
				employeeBean.setFirstName(resultSet.getString(2));
				employeeBean.setFatherName(resultSet.getString(3));
				employeeBean.setGender(resultSet.getString(4));

				employeeBean.setEmailId(resultSet.getString(5));
				employeeBean.setMobileNumber(Long.parseLong(resultSet.getString(6)));
				employeeBean.setAadharNo(Long.parseLong(resultSet.getString(7)));
				
				listOfEmployee.add(employeeBean);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listOfEmployee;
	}
	
	public boolean login(String employeeId,long mobileNumber)
	{
		boolean s1=false;
		try{
		String q1="select * from employeebean where employeeId=? and mobileNo=?";
		pstmt=con.prepareStatement(q1);
		pstmt.setString(1,employeeId);
		pstmt.setLong(2,mobileNumber);
		resultSet=pstmt.executeQuery();
		s1=resultSet.next();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return s1;
	}
	
	public  int update(EmployeeBean emp)
	{
	int result=0;
		String sql="update employeebean set FirstName=?,LastName=?,FatherName=?,Gender=?,dateOfBirth=?,EmailId=?,MobileNo=?,AadharNo=?,PermanatAddress=?,localAddress=?,SchoolName=?,tenthPassedout=?,IntermeadiateCollegeName=?,InterPassedout=?,GraduationDetails=?,GraduationPassedout=?,Branch=?,University=?,CompanyName=?,Role=?,NoticePeriod=?,Location=?,Experience=?,CurrentCtc=?,ExpectedCtc=? where EmployeeId=?";
		try{
			PreparedStatement pstmt=con.prepareStatement(sql);
			pstmt.setString(1,emp.getFirstName());
			pstmt.setString(2, emp.getLastName());
			pstmt.setString(3, emp.getFatherName());
			pstmt.setString(4,emp.getGender());
			pstmt.setString(5, emp.getDob().toString());
			pstmt.setString(6, emp.getEmailId());
			pstmt.setLong(7, emp.getMobileNumber());
			pstmt.setLong(8, emp.getAadharNo());
			pstmt.setString(9, emp.getPermanentAddress());
			pstmt.setString(10, emp.getLocalAddress());
			pstmt.setString(11, emp.getSchoolName());
			pstmt.setInt(12, emp.getTenthPassedOut());
			pstmt.setString(13,emp.getIntermediateCollegeName());
			pstmt.setInt(14, emp.getInterPassedOut());
			pstmt.setString(15, emp.getGraduationDetails());
			pstmt.setInt(16, emp.getGraduationPassedOut());
			pstmt.setString(17,emp.getBranch());
			pstmt.setString(18, emp.getUniversity());
			pstmt.setString(19,emp.getCompanyName());
			pstmt.setString(20, emp.getRole());
			pstmt.setInt(21,emp.getNoticePeriod());
			pstmt.setString(22,emp.getLocation());
			pstmt.setString(23, emp.getExperience());
			pstmt.setDouble(24, emp.getCurrentCTC());
			pstmt.setDouble(25, emp.getExpectedCTC());
			pstmt.setString(26,emp.getEmployeeId());
			
		 result=pstmt.executeUpdate();
		}catch(NullPointerException e)
		{
			e.printStackTrace();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}
}