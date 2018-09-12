package com.hrm.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrm.bean.EmployeeBean;
import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// reading the client values

				response.setContentType("text/html");

				String firstName=request.getParameter("firstName").trim();
				String lastName=request.getParameter("lastName").trim();
				String fatherName=request.getParameter("fatherName").trim();
				String gender=request.getParameter("gender").trim();
				
				Date dob=null;
				try{
				SimpleDateFormat sdf=new SimpleDateFormat();
				
				 dob=sdf.parse(request.getParameter("dob"));
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
				
				String emailId=request.getParameter("emailId").trim();
				String mobileNumber=request.getParameter("mobileNumber").trim();
				String aadharNo=request.getParameter("aadharNo").trim();
				String permanentAddress=request.getParameter("permanentAddress").trim();
				String localAddress=request.getParameter("localAddress").trim();
				
				String schoolName=request.getParameter("schoolName").trim();
				String tenthPassedOut=request.getParameter("tenthPassedOut").trim();
				String intermediateCollegeName=request.getParameter("intermediateCollegeName").trim();
				String interPassedOut=request.getParameter("interPassedOut").trim();
				String graduationDetails=request.getParameter("graduationDetails").trim();
				String graduationPassedOut=request.getParameter("graduationPassedOut").trim();
				String branch=request.getParameter("branch").trim();
				String university=request.getParameter("university").trim();
				
				String companyName=request.getParameter("companyName").trim();
				String role=request.getParameter("role").trim();
				String noticePeriod=request.getParameter("noticePeriod").trim();
				String location=request.getParameter("location").trim();
				String experience=request.getParameter("experience").trim();
				String currentCTC=request.getParameter("currentCTC").trim();
				String expectedCTC=request.getParameter("expectedCTC").trim();
				
				// inject client reading values into Encapsulation object
				
				EmployeeBean employeebean=new EmployeeBean();
				
				if(mobileNumber!=null && !mobileNumber.isEmpty()){
					employeebean.setMobileNumber(Long.parseLong(mobileNumber));
				}
				
				if(aadharNo!=null && !aadharNo.isEmpty()){
					employeebean.setAadharNo(Long.parseLong(aadharNo));
				}
				
				if(tenthPassedOut!=null && !interPassedOut.isEmpty()){
					employeebean.setTenthPassedOut(Integer.parseInt(tenthPassedOut));
				}
				
				if(interPassedOut!=null && !tenthPassedOut.isEmpty()){
					employeebean.setInterPassedOut(Integer.parseInt(interPassedOut));
				}
				
				if(graduationPassedOut!=null && !graduationPassedOut.isEmpty()){
					employeebean.setGraduationPassedOut(Integer.parseInt(graduationPassedOut));
				}
				
				if(noticePeriod!=null && !noticePeriod.isEmpty()){
					employeebean.setNoticePeriod(Integer.parseInt(noticePeriod));
				}
				
				if(currentCTC!=null && !currentCTC.isEmpty()){
					employeebean.setCurrentCTC(Double.parseDouble(currentCTC));
				}
				
				if(expectedCTC!=null && !expectedCTC.isEmpty()){
					employeebean.setExpectedCTC(Double.parseDouble(expectedCTC));
				}
				
				employeebean.setFirstName(firstName);
				employeebean.setLastName(lastName);
				employeebean.setFatherName(fatherName);
				employeebean.setGender(gender);
				employeebean.setDob(dob);
				employeebean.setEmailId(emailId);
				employeebean.setPermanentAddress(permanentAddress);
				employeebean.setLocalAddress(localAddress);
				
				employeebean.setSchoolName(schoolName);				
				employeebean.setIntermediateCollegeName(intermediateCollegeName);
				employeebean.setGraduationDetails(graduationDetails);
				employeebean.setBranch(branch);
				employeebean.setUniversity(university);
				
				employeebean.setCompanyName(companyName);
				employeebean.setRole(role);
				employeebean.setLocation(location);
				employeebean.setExperience(experience);
				
				
				//calling the services
				
				HRMService hrmService=new HRMServicesImplementation();
				int result = hrmService.insertEmployeeData(employeebean);
				
				RequestDispatcher requestDisForward=request.getRequestDispatcher("Home.jsp");
				RequestDispatcher requestDisInclude=request.getRequestDispatcher("EmployeeRegistration.jsp");
				if(result>0){
					requestDisForward.forward(request, response);
				}else{
					requestDisInclude.include(request, response);
				}
				
	}

}
