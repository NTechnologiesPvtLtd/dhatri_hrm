package com.hrm.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.hrm.bean.AdminBean;
import com.hrm.bean.EmployeeBean;
import com.hrm.bean.RequestBean;
import com.hrm.businesslogic.EmployeeIdGenerator;
import com.hrm.constants.EmployeeConstants;
import com.hrm.db.connections.MySqlDBConnection;
import com.hrm.session.SharedObject;

public class HRMDaoImplementation implements HRMDao {

	private static final EmployeeBean EmployeeBean = null;
	private static final AdminBean AdminBean =null;
	Connection con;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet resultSet;
	static int placeHolderValue =1;
	static String employeeId;
	public HRMDaoImplementation(){
		con=MySqlDBConnection.getInstance();
		}
	
	public boolean duplicateData(EmployeeBean employeeBean) {
		boolean dp=false;
		employeeId=employeeBean.getEmployeeId();
		if(employeeId==null){
		 employeeId=EmployeeIdGenerator.getEmployeeId();
		}
		String query="select * from employeebean where EmployeeId=?";
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,employeeId);
			resultSet=pstmt.executeQuery();
			while(resultSet.next()) {
				 dp=true;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		employeeBean.setEmployeeId(employeeId);
		return dp;
	}

	@SuppressWarnings("deprecation")
	@Override
	public int insertEmployeeData(EmployeeBean employeeBean) {
		int result=0;
		if(employeeBean!=null) {
		
		String query="insert into employeebean values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try
		{
			while(duplicateData(employeeBean)) {
			 employeeId=null;
			employeeBean.setEmployeeId(employeeId);
			duplicateData(employeeBean);
			}
			
		pstmt=con.prepareStatement(query);
		setValuesToPstmt(employeeBean);
		result=pstmt.executeUpdate();
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}		
		
		}
		else {
			System.out.println("Please enter altleat one value in employeebean");
		
		}
		return result;
	}

	public void setValuesToPstmt(EmployeeBean employeeBean) throws SQLException {
		pstmt.setString(1,employeeId);
		pstmt.setString(2,employeeBean.getFirstName());
		pstmt.setString(3,employeeBean.getLastName());
		pstmt.setString(4,employeeBean.getFatherName());
		pstmt.setString(5,employeeBean.getGender());
		pstmt.setString(6,employeeBean.getDob());
		pstmt.setString(7,employeeBean.getEmailId());
		pstmt.setLong(8,employeeBean.getMobileNumber());
		pstmt.setLong(9, employeeBean.getAlternateMobileNumber());
		pstmt.setLong(10,employeeBean.getAadharNo());
		pstmt.setString(11, employeeBean.getPanNumber());
		pstmt.setString(12, employeeBean.getPassportNumber());
		pstmt.setString(13,employeeBean.getPermanentAddress());
		pstmt.setString(14,employeeBean.getLocalAddress());
		
		pstmt.setString(15,employeeBean.getSchoolName());
		pstmt.setInt(16, employeeBean.getTenthPassedOut());
		pstmt.setString(17,employeeBean.getIntermediateCollegeName());
		pstmt.setInt(18,employeeBean.getInterPassedOut());
		pstmt.setString(19,employeeBean.getGraduationDetails());
		pstmt.setInt(20,employeeBean.getGraduationPassedOut());
		pstmt.setString(21,employeeBean.getBranch());
		pstmt.setString(22,employeeBean.getUniversity());
		pstmt.setString(23,employeeBean.getCompanyName());
		pstmt.setString(24,employeeBean.getRole());
		pstmt.setInt(25, employeeBean.getNoticePeriod());
		pstmt.setString(26,employeeBean.getLocation());
		pstmt.setString(27,employeeBean.getExperience());
		pstmt.setDouble(28,employeeBean.getCurrentCTC());
		pstmt.setDouble(29,employeeBean.getExpectedCTC());
		pstmt.setString(30, employeeBean.getManager());
		pstmt.setString(31,employeeBean.getBankname());
		pstmt.setLong(32, employeeBean.getBankAccNo());
		pstmt.setString(33,employeeBean.getIfscCode());
		//pstmt.setString(34,employeeBean.getManagerId());
	}
	@Override
	public List<EmployeeBean> search() {
		List<EmployeeBean> listOfEmployee = new ArrayList<>();
		String query="select EmployeeId,FirstName,LastName,FatherName,Gender,EmailId,MobileNo,AlternateMobileNumber,AadharNo,SchoolName,TenthPassedOut,IntermeadiateCollegeName,InterPassedOut,GraduationDetails,GraduationPassedOut,Branch,University,CompanyName,Role,NoticePeriod,Location,Experience,CurrentCtc,ExpectedCtc,PermanatAddress,LocalAddress from employeebean";
		
		try {
			pstmt = con.prepareStatement(query);
			resultSet=pstmt.executeQuery();
			EmployeeBean employeeBean=null;
			while(resultSet.next()){
				employeeBean = setToBean();
				
				listOfEmployee.add(employeeBean);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return listOfEmployee;
	}

	public EmployeeBean setToBean() throws SQLException {
		EmployeeBean employeeBean;
		employeeBean = new EmployeeBean();
		employeeBean.setEmployeeId(resultSet.getString(1));
		employeeBean.setFirstName(resultSet.getString(2));
		employeeBean.setLastName(resultSet.getString(3));
		employeeBean.setFatherName(resultSet.getString(4));
		employeeBean.setGender(resultSet.getString(5));				
		employeeBean.setEmailId(resultSet.getString(6));
		employeeBean.setMobileNumber((resultSet.getLong(7)));
		employeeBean.setAlternateMobileNumber(resultSet.getLong(8));
		employeeBean.setAadharNo(resultSet.getLong(9));
		employeeBean.setSchoolName(resultSet.getString(10));
		employeeBean.setTenthPassedOut(resultSet.getInt(11));
		employeeBean.setIntermediateCollegeName(resultSet.getString(12));
		employeeBean.setInterPassedOut(resultSet.getInt(13));
		employeeBean.setGraduationDetails(resultSet.getString(14));
		employeeBean.setGraduationPassedOut(resultSet.getInt(15));
		employeeBean.setBranch(resultSet.getString(16));
		employeeBean.setUniversity(resultSet.getString(17));
		employeeBean.setCompanyName(resultSet.getString(18));
		employeeBean.setRole(resultSet.getString(19));
		employeeBean.setNoticePeriod(resultSet.getInt(20));
		employeeBean.setLocation(resultSet.getString(21));
		employeeBean.setExperience(resultSet.getString(22));
		employeeBean.setCurrentCTC((resultSet.getDouble(23)));
		employeeBean.setExpectedCTC((resultSet.getDouble(24)));
		employeeBean.setPermanentAddress(resultSet.getString(25));
		employeeBean.setLocalAddress(resultSet.getString(26));
		return employeeBean;
	}
	
	public List<EmployeeBean> search(String param)
	{
		
		if(null == param || param.isEmpty()){
			return null;
		}
		
		List<EmployeeBean> listOfEmployee = new ArrayList<>();
		EmployeeBean employeeBean = null;
		String query="select * from employeebean where employeeId='"+param +"' or firstname='"+param +"' or currentctc='"+param +"'";
		
		try
		{
			stmt = con.createStatement();
			
			resultSet=stmt.executeQuery(query);
			while(resultSet.next())
			{
				employeeBean = setToBeanAll();
				 
				listOfEmployee.add(employeeBean);
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	
		
		return listOfEmployee;
	}

	public EmployeeBean setToBeanAll() throws SQLException {
		EmployeeBean employeeBean;
		employeeBean= new EmployeeBean();
		employeeBean.setEmployeeId(resultSet.getString(1));
		employeeBean.setFirstName(resultSet.getString(2));
		employeeBean.setLastName(resultSet.getString(3));
		employeeBean.setFatherName(resultSet.getString(4));
		employeeBean.setGender(resultSet.getString(5));				
		employeeBean.setDob(resultSet.getString(6));
		employeeBean.setEmailId(resultSet.getString(7));
		employeeBean.setMobileNumber(resultSet.getLong(8));
		employeeBean.setAlternateMobileNumber(resultSet.getLong(9));
		employeeBean.setAadharNo(resultSet.getLong(10));
		employeeBean.setPanNumber(resultSet.getString(11));
		employeeBean.setPassportNumber(resultSet.getString(12));
		employeeBean.setPermanentAddress(resultSet.getString(13));
		employeeBean.setLocalAddress(resultSet.getString(14));
		employeeBean.setSchoolName(resultSet.getString(15));
		employeeBean.setTenthPassedOut(resultSet.getInt(16));
		employeeBean.setIntermediateCollegeName(resultSet.getString(17));
		employeeBean.setInterPassedOut(resultSet.getInt(18));
		employeeBean.setGraduationDetails(resultSet.getString(19));
		employeeBean.setGraduationPassedOut(resultSet.getInt(20));
		employeeBean.setBranch(resultSet.getString(21));
		employeeBean.setUniversity(resultSet.getString(22));
		employeeBean.setCompanyName(resultSet.getString(23));
		employeeBean.setRole(resultSet.getString(24));
		employeeBean.setNoticePeriod(resultSet.getInt(25));
		employeeBean.setLocation(resultSet.getString(26));
		employeeBean.setExperience(resultSet.getString(27));
		employeeBean.setCurrentCTC(resultSet.getDouble(28));
		employeeBean.setExpectedCTC(resultSet.getDouble(29));
		  employeeBean.setManager(resultSet.getString(30));
		  employeeBean.setBankname(resultSet.getString(31));
		  employeeBean.setBankAccNo(resultSet.getLong(32));
		  employeeBean.setIfscCode(resultSet.getString(33));
		return employeeBean;
	}
	
	@SuppressWarnings("null")
	public List<EmployeeBean> searchManager(String role1)
	{
		EmployeeBean employeeBean=null;
		List<EmployeeBean> listOfEmployee = new ArrayList<>();
		if(role1!=null&&!role1.isEmpty())
		{
		 String query="select * from employeebean where role=?";
			try
			{
			    pstmt=con.prepareStatement(query);
				pstmt.setString(1,role1);
				resultSet=pstmt.executeQuery();
				while(resultSet.next())
				{
					employeeBean = setToBeanAll();
					listOfEmployee.add(employeeBean);
				}	
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
		else {
			System.out.println("please enter role");
		}
			return listOfEmployee;
		
	}
	public List<EmployeeBean> searchManagerEmp(String manager)
	{
		List<EmployeeBean> listOfEmployee = new ArrayList<>();
		EmployeeBean employeeBean=null;
		if(manager!=null&&!manager.isEmpty())
		{
			String query="select * from employeebean where Manager=?";
			try
			{
				pstmt=con.prepareStatement(query);
				pstmt.setString(1,manager);
				resultSet=pstmt.executeQuery();
				while(resultSet.next())
				{
					employeeBean = setToBeanAll();
					listOfEmployee.add(employeeBean);
				}
				}
			catch(Exception e)
			{
				System.out.println(e);
			}
		}
		else
		{
			System.out.println("please enter manager");
		}
			return listOfEmployee;
		
	}
	public EmployeeBean searchGmailId(String firstname)
	{
		EmployeeBean employeeBean=new EmployeeBean();
		if(firstname!=null&&!firstname.isEmpty())
		{
		String query="select EmailId from employeebean where FirstName=?";
		try
		{
			pstmt=con.prepareStatement(query);
			pstmt.setString(1,firstname);
			resultSet=pstmt.executeQuery();
			while(resultSet.next())
			{
				employeeBean = setToBeanAll();
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		}
		else {
			System.out.println("invalid firstname");
		}
		return employeeBean;
	}
	
	
	public boolean login(String employeeId,long mobileNumber)
	{
		boolean s1=false;
		if(employeeId!=null&&!employeeId.isEmpty())
		{
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
		}}
		else
		{
			System.out.println("please enter valid username");
		}
		return s1;
	}
	@Override
	public int employeeUpdate(EmployeeBean employeeBean) {
		int result =0;
	
		if(employeeBean!=null)
		{
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
		addPlaceHolderValue(pstmt,employeeBean.getAlternateMobileNumber());
		addPlaceHolderValue(pstmt,employeeBean.getAadharNo());
		addPlaceHolderValue(pstmt,employeeBean.getPanNumber());
		addPlaceHolderValue(pstmt,employeeBean.getPassportNumber());
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
		addPlaceHolderValue(pstmt,employeeBean.getManager());
		addPlaceHolderValue(pstmt,employeeBean.getBankname());
		addPlaceHolderValue(pstmt,employeeBean.getBankAccNo());
		addPlaceHolderValue(pstmt,employeeBean.getIfscCode());
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
		addToQuery(query, employeeBean.getAlternateMobileNumber(), "alternatemobilenumber");
		addToQuery(query, employeeBean.getAadharNo(), "aadharno");
		addToQuery(query, employeeBean.getPanNumber(), "pannumber");
		addToQuery(query, employeeBean.getPassportNumber(), "passportnumber");
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
		addToQuery(query, employeeBean.getManager(), "manager");
		addToQuery(query, employeeBean.getBankname(), "bankName");
		addToQuery(query, employeeBean.getBankAccNo(), "bankaccountnumber");
		addToQuery(query, employeeBean.getIfscCode(), "ifscCode");
		
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
	
public EmployeeBean searchLoggerEmail(String LoginId)throws SQLException{
	EmployeeBean emp=new EmployeeBean();
	if(LoginId!=null && !LoginId.isEmpty()) {
	
	String query ="select EmailId from employeebean where EmployeeId=?";
	pstmt=con.prepareStatement(query);
	pstmt.setString(1,LoginId);
	resultSet=pstmt.executeQuery();
	while(resultSet.next()) {
		emp.setEmailId(resultSet.getString(1));
	}
	}
	else
		{
		System.out.println("please enter the value");
		}
	return emp;
}
public int insertRequestData(RequestBean employeerequest){
	String query="insert into createrequest values(?,?,?,?,?)";
	int result=0;
	if(employeerequest !=null)
	{
	try
	{
		pstmt=con.prepareStatement(query);	
	setvaluestoptst(employeerequest);
	result=pstmt.executeUpdate();
	}
	catch(Exception e){
		e.printStackTrace();
	}
	}else {
		System.out.println("nulll data cannot be inserted");
	}
	return result;
}

public void setvaluestoptst(RequestBean employeerequest) throws SQLException {
	pstmt.setString(1,employeerequest.getReasonId());
	pstmt.setString(2,employeerequest.getReasonName());
	pstmt.setString(5,employeerequest.getTextArea());
	pstmt.setString(4,employeerequest.getSenderMail());
	pstmt.setString(3,employeerequest.getRecieverMail());
}
public List<RequestBean> ViewRequest(){
	List<RequestBean>  listofrequest=new ArrayList<RequestBean>();
	String query="select * from createrequest";
	try {
	pstmt=con.prepareStatement(query);
	resultSet=pstmt.executeQuery();
	RequestBean empsql=null;
	while(resultSet.next()) {
	empsql=new RequestBean();
	setvaluestorequest(empsql);
	listofrequest.add(empsql);
	}
	} catch (SQLException e) {
	e.printStackTrace();
	}
	return listofrequest;
	}

public void setvaluestorequest(RequestBean empsql) throws SQLException {
	empsql.setReasonId(resultSet.getString(5));
	empsql.setReasonName(resultSet.getString(4));
	empsql.setTextArea(resultSet.getString(1));
	empsql.setRecieverMail(resultSet.getString(3));
	empsql.setSenderMail(resultSet.getString(2));
}



	public boolean adminlogin(String adminid, String password) {
		boolean adminCheck = false;
		if (null == adminid || null == password) {
			return adminCheck;
		}
		try {
			String query = "select * from admindetails where adminid=? and password=?";
			con = MySqlDBConnection.getInstance();

			pstmt = con.prepareStatement(query);
			setvaluestoAdminlogin(adminid, password);
			resultSet = pstmt.executeQuery();
			adminCheck = resultSet.next();

		} catch (SQLException e) {
			System.out.println("");
			e.printStackTrace();
		}
		return adminCheck;
	}

public void setvaluestoAdminlogin(String adminid, String password) throws SQLException {
	pstmt.setString(1, adminid);
	pstmt.setString(2, password);
}

@Override
public String getRole(String userId) {
String	str = null;
	String query="select role  from employeebean where employeeId =?";
	try {
		pstmt=con.prepareStatement(query);
		pstmt.setString(1,userId);
		resultSet=pstmt.executeQuery();
		while(resultSet.next())
		{
		str=resultSet.getString(1);
		}
	} catch (SQLException e) {
	
		e.printStackTrace();
	}
	return str;
}



@Override
public String getMail(String userId) {
	String str=null;
	String query="select EmailId from employeebean where employeeId=?";
	try {
		pstmt=con.prepareStatement(query);
		pstmt.setString(1,userId);
		resultSet=pstmt.executeQuery();
		while(resultSet.next())
		{
		str=resultSet.getString(1);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return str;
}

@Override
public List<RequestBean> ViewSenderMialId(String emailID) {
	List<RequestBean>  listofrequest=new ArrayList<RequestBean>();
	String query="select * from createrequest where sendermail = ? ";
	try {
	pstmt=con.prepareStatement(query);
	pstmt.setString(1,emailID);
	resultSet=pstmt.executeQuery();
	RequestBean rb2=null;
	while(resultSet.next()) {
	rb2=new RequestBean();
	setvaluestorequest(rb2);
	listofrequest.add(rb2);
	}
	} catch (SQLException e) {
	e.printStackTrace();
	}
	return listofrequest;
}

@Override
public List<RequestBean> ViewReceiverMialId(String emailID) {
	List<RequestBean>  listofrequest=new ArrayList<RequestBean>();
	String query="select * from createrequest where receivermail = ? ";
	try {
	pstmt=con.prepareStatement(query);
	pstmt.setString(1,emailID);
	resultSet=pstmt.executeQuery();
	RequestBean rb2=null;
	while(resultSet.next()) {
	rb2=new RequestBean();
	setvaluestorequest(rb2);
	listofrequest.add(rb2);
	}
	} catch (SQLException e) {
	e.printStackTrace();
	}
	return listofrequest;
}

public List<RequestBean> requestSearch(){
		List<RequestBean>  listofrequest=new ArrayList<RequestBean>();
		String query="select * from CreateRequest";
		try {
		pstmt=con.prepareStatement(query);
		resultSet=pstmt.executeQuery();
		RequestBean empsql=null;
		while(resultSet.next()) {
		empsql=new RequestBean();
		empsql.setTextArea(resultSet.getString(1));
		empsql.setSenderMail(resultSet.getString(2));
		empsql.setRecieverMail(resultSet.getString(3));
		empsql.setReasonName(resultSet.getString(4));
		empsql.setReasonId(resultSet.getString(5));
		listofrequest.add(empsql);
		}
		} catch (SQLException e) {
		e.printStackTrace();
		}
		
		return listofrequest;
		}	
@SuppressWarnings("null")
	public List<EmployeeBean> employeeSearch(String searchparam){
		
		EmployeeBean employeeBean1=null;
		List<EmployeeBean> listOfSearchEmployee = new ArrayList<>();
	
		String query="select FirstName , LastName , FatherName from employeebean where Firstname like ? or LastName like ? or FatherName like ?";
			try
			{
				
				pstmt=con.prepareStatement(query);
				pstmt.setString(1,searchparam + "%");
				pstmt.setString(2,searchparam + "%");
				pstmt.setString(3,searchparam + "%");
				resultSet=pstmt.executeQuery();
				while(resultSet.next())
				{
					employeeBean1 = new EmployeeBean();
					
					employeeBean1.setFirstName(resultSet.getString(1));
					employeeBean1.setLastName(resultSet.getString(2));
					employeeBean1.setFatherName(resultSet.getString(3));
					listOfSearchEmployee.add(employeeBean1);
				}
				System.out.println(listOfSearchEmployee.size());
		          for (int i=0; i<listOfSearchEmployee.size(); i++){
		              EmployeeBean eb1= listOfSearchEmployee.get(i);
		              System.out.println(eb1.getFirstName());
		              System.out.println(eb1.getLastName());
		              System.out.println(eb1.getFatherName());
		          }
				//listOfSearchEmployee.add(employeeBean1);
			}
			catch(Exception e)
			{
			
			e.printStackTrace();
			}
			
			return listOfSearchEmployee;
		
	}	
}