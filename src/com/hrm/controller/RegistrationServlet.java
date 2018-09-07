package com.hrm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrm.bean.EmployeeBean;

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

				String employeeId=request.getParameter("employeeId").trim();
				String firstName=request.getParameter("firstName").trim();
				String lastName=request.getParameter("lastName").trim();
				String gender=request.getParameter("gender").trim();
				String dob=request.getParameter("dob").trim();
				String emailId=request.getParameter("emailId").trim();
				String mobileNumber=request.getParameter("mobileNumber").trim();
				String aadhar=request.getParameter("aadhar").trim();
				String permanentAddress=request.getParameter("permanentAddress").trim();
				String localAddress=request.getParameter("localAddress").trim();
				
				String schoolName=request.getParameter("schoolName").trim();
				String intermediateCollegeName=request.getParameter("intermediateCollegeName").trim();
				String graduationDetails=request.getParameter("graduationDetails").trim();
				String branch=request.getParameter("branch").trim();
				
				String companyName=request.getParameter("companyName").trim();
				String role=request.getParameter("role").trim();
				String noticePeriod=request.getParameter("noticePeriod").trim();
				String location=request.getParameter("location").trim();
				String experience=request.getParameter("experience").trim();
				String currentctc=request.getParameter("currentctc").trim();
				String expectedctc=request.getParameter("expectedctc").trim();
				
				// inject client reading values into Encapsulation object
				
				EmployeeBean employeebean=new EmployeeBean();
				
				if(mobileNumber!=null && !mobileNumber.isEmpty()){
					employeebean.setMobileNumber(Long.parseLong(mobileNumber));
				}
				
				if(aadhar!=null && !aadhar.isEmpty()){
					employeebean.setAadharNo(Long.parseLong(aadhar));
				}
				
				if(currentctc!=null && !currentctc.isEmpty()){
					employeebean.setCurrentCTC(Double.parseDouble(currentctc));
				}
				
				if(expectedctc!=null && !expectedctc.isEmpty()){
					employeebean.setExpectedCTC(Double.parseDouble(expectedctc));
				}
				
				employeebean.setFirstName(firstName);
				employeebean.setLastName(lastName);
				employeebean.setGender(gender);
				employeebean.setDob(dob);
				employeebean.setEmailId(emailId);
				employeebean.setLocalAddress(permanentAddress);
				employeebean.setLocalAddress(localAddress);
				
				employeebean.setLastName(schoolName);
				employeebean.setIntermediateCollegeName(intermediateCollegeName);
				employeebean.setGraduationDetails(graduationDetails);
				employeebean.setBranch(branch);
				
				employeebean.setCompanyName(companyName);
				employeebean.setRole(role);
				employeebean.setNoticePeriod(noticePeriod);
				employeebean.setLocation(location);
				employeebean.setExperience(experience);
	}

}
