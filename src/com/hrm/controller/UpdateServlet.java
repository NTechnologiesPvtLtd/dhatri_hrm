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
import com.hrm.dao.HRMDaoImplementation;
import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;
import com.hrm.session.SharedObject;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// reading the client values

		response.setContentType("text/html");
		String employeeId = request.getParameter("empid");
        String firstName=request.getParameter("Firstname");
		String lastName=request.getParameter("lastname");
		String fatherName=request.getParameter("fathername");
		String gender=request.getParameter("Gender");
		String dob = request.getParameter("dob");
		String emailId=request.getParameter("EmailId");
		String mobileNumber=request.getParameter("mobileNumber");
		String alternateMobileNumber=request.getParameter("alternatemobileNumber");
		String aadharNo=request.getParameter("Adharno");
		String  panNumber=request.getParameter("panNo");
		String passportNumber=request.getParameter("passportNo");
		String permanentAddress=request.getParameter("PermanentAddress");
		String localAddress=request.getParameter("LocalAdress");
		String schoolName=request.getParameter("schoolName");
		String tenthPassedOut=request.getParameter("tenthPassedOut");
		String intermediateCollegeName=request.getParameter("intermediateCollegeName");
		String interPassedOut=request.getParameter("interPassedOut");
		String graduationDetails=request.getParameter("graduationDetails");
		String graduationPassedOut=request.getParameter("graduationPassedOut");
		String branch=request.getParameter("branch");
		String university=request.getParameter("university");
		
		String companyName=request.getParameter("companyName");
		String role=request.getParameter("roleDetails");
		String noticePeriod=request.getParameter("noticePeriod");
		String location=request.getParameter("location");
		String experience=request.getParameter("experience");
		String currentCTC=request.getParameter("currentCTC");
		String manager = request.getParameter("empmanager");
		String bankName = request.getParameter("bankName");
		String bankAccNo = request.getParameter("bankAccNo");
		String ifscCode = request.getParameter("ifscCode");
        String expectedCTC=request.getParameter("expectedCTC");
		
		// inject client reading values into Encapsulation object
		
		EmployeeBean emp=new EmployeeBean();
		emp.setEmployeeId(employeeId);
		
	setMobileNumber(mobileNumber, emp);
		
	if(aadharNo!=null && !aadharNo.isEmpty()){
		try {
				
			emp.setAadharNo(Long.parseLong(aadharNo));
			}
			
		 catch (Exception e) {
			aadharNo=null;
		}
	}
	
	if(tenthPassedOut!=null && !tenthPassedOut.isEmpty()){
		try {
			
			emp.setTenthPassedOut(Integer.parseInt(tenthPassedOut));
			}
		
		catch (Exception e) {
			tenthPassedOut=null;
		}
	}
	
	if(interPassedOut!=null && !interPassedOut.isEmpty()){
		try {
								
			emp.setInterPassedOut(Integer.parseInt(interPassedOut));
			}
		
		 catch (Exception e) {
			interPassedOut=null;
		}
	}	
	
	if(graduationPassedOut!=null && !graduationPassedOut.isEmpty()){
		try {										
				
			emp.setGraduationPassedOut(Integer.parseInt(graduationPassedOut));
			}
		
		catch (Exception e) {
			graduationPassedOut=null;
		}
	}	
	
		/*
		 * if(noticePeriod!=null && !noticePeriod.isEmpty()){ try {
		 * 
		 * emp.setNoticePeriod(Integer.parseInt(noticePeriod)); } catch (Exception e) {
		 * noticePeriod=null; } }
		 */
	
	if(currentCTC!=null && !currentCTC.isEmpty()){
		try {					
			
			emp.setCurrentCTC(Double.parseDouble(currentCTC));
			}
		 catch (Exception e) {
			currentCTC=null;
		}
	}
		/*
		 * if(expectedCTC!=null && !expectedCTC.isEmpty()){ try {
		 * 
		 * emp.setExpectedCTC(Double.parseDouble(expectedCTC)); } catch (Exception e) {
		 * expectedCTC=null; } }
		 */
		
	emp.setFirstName(firstName);
	emp.setLastName(lastName);
	emp.setFatherName(fatherName);
	emp.setGender(gender);
	emp.setDob(dob);
	emp.setEmailId(emailId);
	emp.setPermanentAddress(permanentAddress);
	emp.setLocalAddress(localAddress);
	emp.setMobileNumber(Long.parseLong(mobileNumber));
	emp.setAlternateMobileNumber(Long.parseLong(alternateMobileNumber));
	emp.setAadharNo(Long.parseLong(aadharNo));	
	emp.setPanNumber(panNumber);
	emp.setPassportNumber(passportNumber);
	emp.setSchoolName(schoolName);	
	emp.setTenthPassedOut(Integer.parseInt(tenthPassedOut));
	emp.setIntermediateCollegeName(intermediateCollegeName);
	emp.setInterPassedOut(Integer.parseInt(interPassedOut));
	emp.setGraduationPassedOut(Integer.parseInt( graduationPassedOut));
	emp.setGraduationDetails(graduationDetails);
	emp.setBranch(branch);
	emp.setUniversity(university);
	emp.setCompanyName(companyName);
	emp.setRole(role);
	emp.setLocation(location);
	emp.setExperience(experience);
	emp.setCurrentCTC(Double.parseDouble(currentCTC));
	emp.setManager(manager);	
	emp.setBankname(bankName);
	emp.setBankAccNo(Long.parseLong(bankAccNo));
	emp.setIfscCode( ifscCode);
	emp.setExpectedCTC(Double.parseDouble(expectedCTC));
	emp.setNoticePeriod(Integer.parseInt(noticePeriod));
		//calling the services
		SharedObject.setSession(request.getSession());
		HRMService hrmService=new HRMServicesImplementation();
		//HRMDaoImplementation hrmDaoImplementation=new HRMDaoImplementation();
		try {
			//hrmDaoImplementation.delete(employeeId);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		int result =0;
		
		result = hrmService.employeeUpdate(emp);
		System.out.println("results value: "+emp);
		System.out.println("results value: "+emp.getFirstName());
		System.out.println("results value: "+emp.getEmployeeId());
		
		try{
		    if(result>0)
		    {
			    RequestDispatcher requestDisForward=request.getRequestDispatcher("SucessPage.jsp");
			             requestDisForward.forward(request, response);
		    }
		    else
		    {
			    RequestDispatcher requestDisInclude=request.getRequestDispatcher("userupdate.jsp");
			             requestDisInclude.include(request, response);
		    }
		}
		
		   catch(Exception e)
		{
			System.out.println(e+"exception");
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


