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

				String id=request.getParameter("empid").trim();
				String firstname=request.getParameter("firstname").trim();
				String lastname=request.getParameter("lastname").trim();
				String gender=request.getParameter("gender").trim();
				String dob=request.getParameter("dob").trim();
				String emailid=request.getParameter("emailid").trim();
				String mobilenumber=request.getParameter("mobilenumber").trim();
				String aadhar=request.getParameter("aadhar").trim();
				String permanentaddress=request.getParameter("permanentaddress").trim();
				String localaddress=request.getParameter("localaddress").trim();
				
				String schoolname=request.getParameter("schoolname").trim();
				String intermediatecollegename=request.getParameter("intermediatecollegename").trim();
				String graduationdetails=request.getParameter("graduationdetails").trim();
				String branch=request.getParameter("branch").trim();
				
				String companyname=request.getParameter("companyname").trim();
				String role=request.getParameter("role").trim();
				String noticeperiod=request.getParameter("noticeperiod").trim();
				String location=request.getParameter("location").trim();
				String experience=request.getParameter("experience").trim();
				String currentctc=request.getParameter("currentctc").trim();
				String expectedctc=request.getParameter("expectedctc").trim();
				
				// inject client reading values into Encapsulation object
				
				EmployeeBean employeebean=new EmployeeBean();
				
				if(mobilenumber!=null && !mobilenumber.isEmpty()){
					employeebean.setMobilenumber(Long.parseLong(mobilenumber));
				}
				
				if(aadhar!=null && !aadhar.isEmpty()){
					employeebean.setAadhar(Long.parseLong(aadhar));
				}
				
				if(currentctc!=null && !currentctc.isEmpty()){
					employeebean.setCurrentctc(Double.parseDouble(currentctc));
				}
				
				if(expectedctc!=null && !expectedctc.isEmpty()){
					employeebean.setExpectedctc(Double.parseDouble(expectedctc));
				}
				
				employeebean.setFirstname(firstname);
				employeebean.setLastname(lastname);
				employeebean.setGender(gender);
				employeebean.setDob(dob);
				employeebean.setEmailid(emailid);
				employeebean.setPermanentaddress(permanentaddress);
				employeebean.setLocaladdress(localaddress);
				
				employeebean.setSchoolname(schoolname);
				employeebean.setIntermediatecollegename(intermediatecollegename);
				employeebean.setGraduationdetails(graduationdetails);
				employeebean.setBranch(branch);
				
				employeebean.setCompanyname(companyname);
				employeebean.setRole(role);
				employeebean.setNoticeperiod(noticeperiod);
				employeebean.setLocation(location);
				employeebean.setExperience(experience);
	}

}
