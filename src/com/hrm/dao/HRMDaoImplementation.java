package com.hrm.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.hrm.bean.*;
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
		String query="select EmployeeId,FirstName,FatherName,Gender,EmailId,MobileNo,AadharNo from employeebean";//"select EmployeeId,FirstName,FatherName,Gender,EmailId,MobileNo,AadharNo from employeebean";
		
		try {
			pstmt = con.prepareStatement(query);
			resultSet=pstmt.executeQuery();
			EmployeeBean employeeBean=null;
			while(resultSet.next()){
				employeeBean = new EmployeeBean();
				employeeBean.setEmployeeId(resultSet.getString(1));
				employeeBean.setFirstName(resultSet.getString(2));
				//employeeBean.setLastName(resultSet.getString(3));
				employeeBean.setFatherName(resultSet.getString(3));
				employeeBean.setGender(resultSet.getString(4));				
				//employeeBean.setDob(resultSet.getDate(6));
				employeeBean.setEmailId(resultSet.getString(5));
				employeeBean.setMobileNumber(Long.parseLong(resultSet.getString(6)));
				employeeBean.setAadharNo(Long.parseLong(resultSet.getString(7)));
				/*employeeBean.setPermanentAddress(resultSet.getString(10));
				employeeBean.setLocalAddress(resultSet.getString(11));
				employeeBean.setSchoolName(resultSet.getString(12));
				employeeBean.setTenthPassedOut(Integer.parseInt(resultSet.getString(13)));
				employeeBean.setIntermediateCollegeName(resultSet.getString(14));
				employeeBean.setInterPassedOut(Integer.parseInt(resultSet.getString(15)));
				employeeBean.setGraduationDetails(resultSet.getString(16));
				employeeBean.setGraduationPassedOut(Integer.parseInt(resultSet.getString(17)));
				employeeBean.setBranch(resultSet.getString(18));
				employeeBean.setUniversity(resultSet.getString(19));
				employeeBean.setCompanyName(resultSet.getString(20));
				employeeBean.setRole(resultSet.getString(21));
				employeeBean.setNoticePeriod(Integer.parseInt(resultSet.getString(22)));
				employeeBean.setLocation(resultSet.getString(23));
				employeeBean.setExperience(resultSet.getString(24));
				employeeBean.setCurrentCTC(Integer.parseInt(resultSet.getString(25)));
				employeeBean.setExpectedCTC(Integer.parseInt(resultSet.getString(26)));*/
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
	@Override
	public int update(EmployeeBean emp) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}