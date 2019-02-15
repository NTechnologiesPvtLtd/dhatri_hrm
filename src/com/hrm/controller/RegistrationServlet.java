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
import javax.servlet.http.HttpSession;

import com.hrm.bean.EmployeeBean;
import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;
import com.hrm.session.SharedObject;

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
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// reading the client values

				response.setContentType("text/html");
				String employeeId = request.getParameter("employeeId");

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
					dob=new Date();
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
				String role=request.getParameter("roleDetails").trim();
				String manager=request.getParameter("empmanager").trim();
				String noticePeriod=request.getParameter("noticePeriod").trim();
				String location=request.getParameter("location").trim();
				String experience=request.getParameter("experience").trim();
				String currentCTC=request.getParameter("currentCTC").trim();
				String expectedCTC=request.getParameter("expectedCTC").trim();
				
				// inject client reading values into Encapsulation object
				
				EmployeeBean employeebean=new EmployeeBean();
				employeebean.setEmployeeId(employeeId);
				
			setMobileNumber(mobileNumber, employeebean);
				
			if(aadharNo!=null && !aadharNo.isEmpty()){
				try {
						
					   employeebean.setAadharNo(Long.parseLong(aadharNo));
					}
					
				 catch (Exception e) {
					aadharNo=null;
				}
			}
			
			if(tenthPassedOut!=null && !tenthPassedOut.isEmpty()){
				try {
					
						employeebean.setTenthPassedOut(Integer.parseInt(tenthPassedOut));
					}
				
				catch (Exception e) {
					tenthPassedOut=null;
				}
			}
			
			if(interPassedOut!=null && !interPassedOut.isEmpty()){
				try {
										
						employeebean.setInterPassedOut(Integer.parseInt(interPassedOut));
					}
				
				 catch (Exception e) {
					interPassedOut=null;
				}
			}	
			
			if(graduationPassedOut!=null && !graduationPassedOut.isEmpty()){
				try {										
						
					  employeebean.setGraduationPassedOut(Integer.parseInt(graduationPassedOut));
					}
				
				catch (Exception e) {
					graduationPassedOut=null;
				}
			}	
			
			converStringToDataType(noticePeriod, employeebean);
			
			if(currentCTC!=null && !currentCTC.isEmpty()){
				try {					
					
						employeebean.setCurrentCTC(Double.parseDouble(currentCTC));
					}
				 catch (Exception e) {
					currentCTC=null;
				}
			}
			
			if(expectedCTC!=null && !expectedCTC.isEmpty()){
				try {					
					
						employeebean.setExpectedCTC(Double.parseDouble(expectedCTC));
					}
				 catch (Exception e) {
					expectedCTC=null;
				}
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
				employeebean.setManager(manager);
				employeebean.setLocation(location);
				employeebean.setExperience(experience);
				
				
				//calling the services
				SharedObject.setSession(request.getSession());
				HRMService hrmService=new HRMServicesImplementation();
				int result = hrmService.insertEmployeeData(employeebean);
				
				try{
				    if(result>0)
				    {
				    	
					    RequestDispatcher requestDisForward=request.getRequestDispatcher("SucessPage.jsp");
					             requestDisForward.forward(request, response);
				    }
				    else
				    {
					    RequestDispatcher requestDisInclude=request.getRequestDispatcher("EmployeeRegistration.jsp");
					             requestDisInclude.include(request, response);
				    }
				}
				
				   catch(Exception e)
				{
					System.out.println(e);
				}
	}

	/**
	 * @param noticePeriod
	 * @param employeebean
	 */
	private void converStringToDataType(String noticePeriod, EmployeeBean employeebean) {
		if(noticePeriod!=null && !noticePeriod.isEmpty()){							
			try {									
					
				  employeebean.setNoticePeriod(Integer.parseInt(noticePeriod));
				}
			 catch (Exception e) {
				noticePeriod=null;
			}
		}
	}

	/**
	 * @param mobileNumber
	 * @param employeebean
	 */
	private void setMobileNumber(String mobileNumber, EmployeeBean employeebean) {
		if(mobileNumber!=null && !mobileNumber.isEmpty()){
			 try {
					
				    employeebean.setMobileNumber(Long.parseLong(mobileNumber));
				  }
				
			   catch (Exception e) {
				mobileNumber=null;
			   }
		}
	}

}