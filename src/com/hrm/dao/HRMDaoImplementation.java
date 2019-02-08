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
			String employeeId=null;
			employeeId=employeeBean.getEmployeeId();
			pstmt=con.prepareStatement(query);
			if(employeeId==null || employeeId.isEmpty()){
			 employeeId=EmployeeIdGenerator.getEmployeeId();
			}
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
			e.printStackTrace();
		}		
		return result;
		
	}
	@Override
	public List<EmployeeBean> search() {
		List<EmployeeBean> listOfEmployee = new ArrayList<>();
		String query="select EmployeeId,FirstName,FatherName,Gender,EmailId,MobileNo,AadharNo,SchoolName,TenthPassedOut,IntermeadiateCollegeName,InterPassedOut,GraduationDetails,GraduationPassedOut,Branch,University,CompanyName,Role,NoticePeriod,Location,Experience,CurrentCtc,ExpectedCtc,PermanatAddress,LocalAddress from employeebean";
		
		try {
			pstmt = con.prepareStatement(query);
			resultSet=pstmt.executeQuery();
			EmployeeBean employeeBean=null;
			while(resultSet.next()){
				employeeBean = new EmployeeBean();
				employeeBean.setEmployeeId(resultSet.getString(1));
				employeeBean.setFirstName(resultSet.getString(2));
				employeeBean.setLastName(resultSet.getString(3));
				employeeBean.setFatherName(resultSet.getString(3));
				employeeBean.setGender(resultSet.getString(4));				
			
				employeeBean.setEmailId(resultSet.getString(5));
				employeeBean.setMobileNumber(Long.parseLong(resultSet.getString(6)));
				employeeBean.setAadharNo(Long.parseLong(resultSet.getString(7)));
				
				employeeBean.setSchoolName(resultSet.getString(8));
				employeeBean.setTenthPassedOut(Integer.parseInt(resultSet.getString(9)));
				employeeBean.setIntermediateCollegeName(resultSet.getString(10));
				employeeBean.setInterPassedOut(Integer.parseInt(resultSet.getString(11)));
				employeeBean.setGraduationDetails(resultSet.getString(12));
				employeeBean.setGraduationPassedOut(Integer.parseInt(resultSet.getString(13)));
				employeeBean.setBranch(resultSet.getString(14));
				employeeBean.setUniversity(resultSet.getString(15));
				employeeBean.setCompanyName(resultSet.getString(16));
				employeeBean.setRole(resultSet.getString(17));
				employeeBean.setNoticePeriod(Integer.parseInt(resultSet.getString(18)));
				employeeBean.setLocation(resultSet.getString(19));
				employeeBean.setExperience(resultSet.getString(20));
				employeeBean.setCurrentCTC(Double.parseDouble(resultSet.getString(21)));
				employeeBean.setExpectedCTC(Double.parseDouble(resultSet.getString(22)));
				employeeBean.setPermanentAddress(resultSet.getString(23));
				employeeBean.setLocalAddress(resultSet.getString(24));
				
				listOfEmployee.add(employeeBean);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return listOfEmployee;
	}
	
	public EmployeeBean search(String empid)
	{
		String employeeId=null;
		employeeId=empid;
		EmployeeBean employeeBean=new EmployeeBean();
		String query="select FirstName,Role,CurrentCtc from employeebean where employeeId=?";
		try
		{
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,empid);
			resultSet=pstmt.executeQuery();
			while(resultSet.next())
			{
				employeeBean.setFirstName(resultSet.getString(1));
				employeeBean.setRole(resultSet.getString(2));
				employeeBean.setCurrentCTC(Double.parseDouble(resultSet.getString(3)));
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return employeeBean;
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
		e.printStackTrace();
		}
		return s1;
	}
	@Override
	public int update(EmployeeBean emp) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public boolean login(String employeeeId, String password, String type) {
		boolean s1=false;
		System.out.println(s1);
		try {
			String query="select adminId,adminDesig,adminDesig from register where adminId=? and password=?and adminDesig=?";
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,employeeeId);
			pstmt.setString(2,password);
			pstmt.setString(3,type);
			resultSet=pstmt.executeQuery();
			s1=resultSet.next();
			/*String role=null;
			while (resultSet.next()) {
			 role=resultSet.getString(2);
			}
			
			System.out.println(role);
			if (role.equals("ADMIN")) {
				s1=true;
			*/
		} catch (Exception e) {
			// TODO: handle exception
		}
		// TODO Auto-generated method stub
		System.out.println(s1);
		return s1;
	}
	

	
}