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
	
	private static final EmployeeBean EmployeeBean = null;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet resultSet;
	static int placeHolderValue =1;
	
	public HRMDaoImplementation(){
		con=MySqlDBConnection.getInstance();
		}
	@Override
	public int insertEmployeeData(EmployeeBean employeeBean) {
		int result=0;
		String query="insert into employeebean values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
		pstmt.setString(27, employeeBean.getManager());
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
				employeeBean.setMobileNumber((resultSet.getLong(6)));
				employeeBean.setAadharNo(resultSet.getLong(7));
				
				employeeBean.setSchoolName(resultSet.getString(8));
				employeeBean.setTenthPassedOut(resultSet.getInt(9));
				employeeBean.setIntermediateCollegeName(resultSet.getString(10));
				employeeBean.setInterPassedOut(resultSet.getInt(11));
				employeeBean.setGraduationDetails(resultSet.getString(12));
				employeeBean.setGraduationPassedOut(resultSet.getInt(13));
				employeeBean.setBranch(resultSet.getString(14));
				employeeBean.setUniversity(resultSet.getString(15));
				employeeBean.setCompanyName(resultSet.getString(16));
				employeeBean.setRole(resultSet.getString(17));
				employeeBean.setNoticePeriod(resultSet.getInt(18));
				employeeBean.setLocation(resultSet.getString(19));
				employeeBean.setExperience(resultSet.getString(20));
				employeeBean.setCurrentCTC((resultSet.getDouble(21)));
				employeeBean.setExpectedCTC((resultSet.getDouble(22)));
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
		String query="select * from employeebean where employeeId=?";
		try
		{
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,empid);
			resultSet=pstmt.executeQuery();
			while(resultSet.next())
			{
				employeeBean.setEmployeeId(resultSet.getString(1));
				employeeBean.setFirstName(resultSet.getString(2));
				employeeBean.setLastName(resultSet.getString(3));
				employeeBean.setFatherName(resultSet.getString(4));
				employeeBean.setGender(resultSet.getString(5));				
				//employeeBean.setDob(resultSet.getDate(6));
				//System.out.println(resultSet.getDate(6));
				//System.out.println("hello");
				employeeBean.setEmailId(resultSet.getString(7));
				employeeBean.setMobileNumber(resultSet.getLong(8));
				employeeBean.setAadharNo(resultSet.getLong(9));
				employeeBean.setPermanentAddress(resultSet.getString(10));
				employeeBean.setLocalAddress(resultSet.getString(11));
				employeeBean.setSchoolName(resultSet.getString(12));
				employeeBean.setTenthPassedOut(resultSet.getInt(13));
				employeeBean.setIntermediateCollegeName(resultSet.getString(14));
				employeeBean.setInterPassedOut(resultSet.getInt(15));
				employeeBean.setGraduationDetails(resultSet.getString(16));
				employeeBean.setGraduationPassedOut(resultSet.getInt(17));
				employeeBean.setBranch(resultSet.getString(18));
				employeeBean.setUniversity(resultSet.getString(19));
				employeeBean.setCompanyName(resultSet.getString(20));
				employeeBean.setRole(resultSet.getString(21));
				employeeBean.setNoticePeriod(resultSet.getInt(22));
				employeeBean.setLocation(resultSet.getString(23));
				employeeBean.setExperience(resultSet.getString(24));
				employeeBean.setCurrentCTC(resultSet.getDouble(25));
				employeeBean.setExpectedCTC((resultSet.getDouble(26)));
				employeeBean.setManager(resultSet.getString(27));
			
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return employeeBean;
	}
	
	@SuppressWarnings("null")
	public List<EmployeeBean> searchManager(String role1)
	{
		EmployeeBean employeeBean=null;
		List<EmployeeBean> listOfEmployee = new ArrayList<>();
	
		String query="select * from employeebean where Role=?";
			try
			{
				pstmt=con.prepareStatement(query);
				pstmt.setString(1,role1);
				resultSet=pstmt.executeQuery();
				while(resultSet.next())
				{
					employeeBean = new EmployeeBean();
					employeeBean.setEmployeeId(resultSet.getString(1));
					employeeBean.setFirstName(resultSet.getString(2));
					employeeBean.setLastName(resultSet.getString(3));
					listOfEmployee.add(employeeBean);
				}
				
				//listOfEmployee.add(employeeBean);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		
			return listOfEmployee;
		
	}
	public List<EmployeeBean> searchManagerEmp(String manager)
	{
		EmployeeBean employeeBean=null;
		List<EmployeeBean> listOfEmployee = new ArrayList<>();
	
		String query="select * from employeebean where Manager=?";
			try
			{
				pstmt=con.prepareStatement(query);
				pstmt.setString(1,manager);
				resultSet=pstmt.executeQuery();
				while(resultSet.next())
				{
					employeeBean = new EmployeeBean();
					employeeBean.setEmployeeId(resultSet.getString(1));
					employeeBean.setFirstName(resultSet.getString(2));
					employeeBean.setLastName(resultSet.getString(3));
					employeeBean.setFatherName(resultSet.getString(4));
					employeeBean.setGender(resultSet.getString(5));				
					
					employeeBean.setEmailId(resultSet.getString(7));
					employeeBean.setMobileNumber(resultSet.getLong(8));
					employeeBean.setAadharNo(resultSet.getLong(9));
					employeeBean.setPermanentAddress(resultSet.getString(10));
					employeeBean.setLocalAddress(resultSet.getString(11));
					employeeBean.setSchoolName(resultSet.getString(12));
					employeeBean.setTenthPassedOut(resultSet.getInt(13));
					employeeBean.setIntermediateCollegeName(resultSet.getString(14));
					employeeBean.setInterPassedOut(resultSet.getInt(15));
					employeeBean.setGraduationDetails(resultSet.getString(16));
					employeeBean.setGraduationPassedOut(resultSet.getInt(17));
					employeeBean.setBranch(resultSet.getString(18));
					employeeBean.setUniversity(resultSet.getString(19));
					employeeBean.setCompanyName(resultSet.getString(20));
					employeeBean.setRole(resultSet.getString(21));
					employeeBean.setNoticePeriod(resultSet.getInt(22));
					employeeBean.setLocation(resultSet.getString(23));
					employeeBean.setExperience(resultSet.getString(24));
					employeeBean.setCurrentCTC(resultSet.getDouble(25));
					employeeBean.setExpectedCTC((resultSet.getDouble(26)));
					employeeBean.setManager(resultSet.getString(27));
					listOfEmployee.add(employeeBean);
				}
				
				//listOfEmployee.add(employeeBean);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		
			return listOfEmployee;
		
	}
	public EmployeeBean searchGmailId(String str1)
	{
		EmployeeBean employeeBean=new EmployeeBean();
		String query="select EmailId from employeebean where FirstName=?";
		try
		{
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,str1);
			resultSet=pstmt.executeQuery();
			while(resultSet.next())
			{
				employeeBean.setEmailId(resultSet.getString(1));
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
		con=MySqlDBConnection.getInstance();
		pstmt=con.prepareStatement(q1);
		pstmt.setString(1,employeeId);
		pstmt.setLong(2,mobileNumber);
		resultSet=pstmt.executeQuery();
		s1=resultSet.next();
		}
		catch(Exception e)
		{
			System.out.println("");
		e.printStackTrace();
		}
		return s1;
	}
	@Override
	public int employeeUpdate(EmployeeBean employeeBean) {
		int result =0;
		//update employeebean set employeeName = ? where employeeId=?;
		StringBuffer query = new StringBuffer();
		buildQuery(employeeBean, query);
		
		
		try {
			pstmt = con.prepareStatement(query.toString());
			setPlaceHolderValuesToPreparedStatement(employeeBean);
			result=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}
	/**
	 * @param employeeBean
	 */
	private void setPlaceHolderValuesToPreparedStatement(EmployeeBean employeeBean) {
		addPlaceHolderValue(pstmt,employeeBean.getFirstName());
		addPlaceHolderValue(pstmt, employeeBean.getLastName());
		addPlaceHolderValue(pstmt,employeeBean.getFatherName());
		addPlaceHolderValue(pstmt,employeeBean.getGender());
		addPlaceHolderValue(pstmt,employeeBean.getDob());
		addPlaceHolderValue(pstmt,employeeBean.getEmailId());
		addPlaceHolderValue(pstmt,employeeBean.getMobileNumber());
		addPlaceHolderValue(pstmt,employeeBean.getAadharNo());
		addPlaceHolderValue(pstmt,employeeBean.getPermanentAddress());
		addPlaceHolderValue(pstmt,employeeBean.getLocalAddress());
		addPlaceHolderValue(pstmt,employeeBean.getSchoolName());
		addPlaceHolderValue(pstmt,employeeBean.getTenthPassedOut());
		addPlaceHolderValue(pstmt,employeeBean.getIntermediateCollegeName());
		addPlaceHolderValue(pstmt,employeeBean.getInterPassedOut());
		addPlaceHolderValue(pstmt,employeeBean.getGraduationDetails());
		addPlaceHolderValue(pstmt,employeeBean.getGraduationPassedOut());
		addPlaceHolderValue(pstmt,employeeBean.getBranch());
		addPlaceHolderValue(pstmt,employeeBean.getUniversity());
		addPlaceHolderValue(pstmt,employeeBean.getCompanyName());
		addPlaceHolderValue(pstmt,employeeBean.getRole());
		addPlaceHolderValue(pstmt,employeeBean.getNoticePeriod());
		addPlaceHolderValue(pstmt,employeeBean.getLocation());
		addPlaceHolderValue(pstmt,employeeBean.getExperience());
		addPlaceHolderValue(pstmt,employeeBean.getCurrentCTC());
		addPlaceHolderValue(pstmt,employeeBean.getExpectedCTC());
		addPlaceHolderValue(pstmt, employeeBean.getEmployeeId());
	}
	/**
	 * @param employeeBean
	 * @param query
	 */
	private void buildQuery(EmployeeBean employeeBean, StringBuffer query) {
		query.append("update employeebean set ");
		addToQuery(query, employeeBean.getFirstName(),"firstname");
		addToQuery(query, employeeBean.getLastName(),"lastname");
		addToQuery(query, employeeBean.getFatherName(), "fathername");
		addToQuery(query, employeeBean.getGender(), "gender");
		addToQuery(query, employeeBean.getDob(), "dateofbirth");
		addToQuery(query, employeeBean.getEmailId(), "emailid");
		addToQuery(query, employeeBean.getMobileNumber(), "mobileno");
		addToQuery(query, employeeBean.getAadharNo(), "aadharno");
		addToQuery(query, employeeBean.getPermanentAddress(), "permanataddress");
		addToQuery(query, employeeBean.getLocalAddress(), "localaddress");
		addToQuery(query, employeeBean.getSchoolName(), "schoolname");
		addToQuery(query, employeeBean.getTenthPassedOut(), "tenthpassedout");
		addToQuery(query, employeeBean.getIntermediateCollegeName(), "intermeadiatecollegename");
		addToQuery(query, employeeBean.getInterPassedOut(), "interpassedout");
		addToQuery(query, employeeBean.getGraduationDetails(), "graduationdetails");
		addToQuery(query, employeeBean.getGraduationPassedOut(), "graduationpassedout");
		addToQuery(query, employeeBean.getBranch(), "branch");
		addToQuery(query, employeeBean.getUniversity(), "university");
		addToQuery(query, employeeBean.getCompanyName(),"companyname");
		addToQuery(query, employeeBean.getRole(), "role");
		addToQuery(query, employeeBean.getNoticePeriod(), "noticeperiod");
		addToQuery(query, employeeBean.getLocation(), "location");
		addToQuery(query, employeeBean.getExperience(), "experience");
		addToQuery(query, employeeBean.getCurrentCTC(), "currentctc");
 		addToQuery(query, employeeBean.getExpectedCTC(), "expectedctc");
 		query.replace(query.length()-2, query.length(), "");
		query.append(" where employeeId=?");
	}
	/**
	 * @param prepared
	 * @param param
	 */
	public static void addPlaceHolderValue(PreparedStatement prepared, Object param){
		if(param!=null){
			try {
				if(param instanceof Long && (Long.parseLong(param.toString())) !=0){
					prepared.setLong(placeHolderValue, ((Long) param).longValue());
					placeHolderValue++;
				} else if(param instanceof Integer && (Integer.parseInt(param.toString())) != 0){
					prepared.setInt(placeHolderValue, ((Integer) param).intValue());
					placeHolderValue++;
				} else if(param instanceof Double && (Double.parseDouble(param.toString())) != 0.0){
					prepared.setDouble(placeHolderValue, ((Double) param).doubleValue());
					placeHolderValue++;
				}
				else if(param instanceof String && param!=null && !param.toString().isEmpty()){
				prepared.setString(placeHolderValue, (String) param);
				placeHolderValue++;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void addToQuery(StringBuffer param, Object param2, String param3){
		if(param2 instanceof Long && (Long.parseLong(param2.toString())) !=0){
			param.append(param3+"=?, ");
		} else if(param2 instanceof Integer && (Integer.parseInt(param2.toString())) != 0){
			param.append(param3+"=?, ");
		} else if(param2 instanceof Double && (Double.parseDouble(param2.toString())) != 0.0){
			param.append(param3+"=?, ");
		}
		else if(param2 instanceof String && param2!=null && !param2.toString().isEmpty()){
			param.append(param3+"=?, ");
		}
	}

	
}