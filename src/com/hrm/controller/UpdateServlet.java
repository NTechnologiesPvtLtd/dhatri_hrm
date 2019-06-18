package com.hrm.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Logger;

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
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
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
		String aadharNo=request.getParameter("Adharno");
		String permanentAddress=request.getParameter("PermanentaAddress");
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
			 System.out.println("Please enter correct value"); 
		}
	}
	
	if(tenthPassedOut!=null && !tenthPassedOut.isEmpty()){
		try {
			
			emp.setTenthPassedOut(Integer.parseInt(tenthPassedOut));
			}
		
		catch (Exception e) {
			System.out.println("Please enter correct value"); 
		}
	}
	
	if(interPassedOut!=null && !interPassedOut.isEmpty()){
		try {
								
			emp.setInterPassedOut(Integer.parseInt(interPassedOut));
			}
		
		 catch (Exception e) {
			 System.out.println("Please enter correct value"); 
		}
	}	
	
	if(graduationPassedOut!=null && !graduationPassedOut.isEmpty()){
		try {										
				
			emp.setGraduationPassedOut(Integer.parseInt(graduationPassedOut));
			}
		
		catch (Exception e) {
			System.out.println("Please enter correct value"); 
		}
	}	
	
	if(noticePeriod!=null && !noticePeriod.isEmpty()){							
		try {									
				
			emp.setNoticePeriod(Integer.parseInt(noticePeriod));
			}
		 catch (Exception e) {
			 System.out.println("Please enter correct value"); 
		}
	}
	
	if(currentCTC!=null && !currentCTC.isEmpty()){
		try {					
			
			emp.setCurrentCTC(Double.parseDouble(currentCTC));
			}
		 catch (Exception e) {
			 System.out.println("Please enter correct value"); 
		}
	}
	
	if(expectedCTC!=null && !expectedCTC.isEmpty()){
		try {					
			
			emp.setExpectedCTC(Double.parseDouble(expectedCTC));
			}
		 catch (Exception e) {
			 System.out.println("Please enter correct value"); 
		}
	}	
		
	emp.setFirstName(firstName);
	emp.setLastName(lastName);
	emp.setFatherName(fatherName);
	emp.setGender(gender);
	emp.setDob(dob);
	emp.setEmailId(emailId);
	emp.setPermanentAddress(permanentAddress);
	emp.setLocalAddress(localAddress);
		
	emp.setSchoolName(schoolName);				
	emp.setIntermediateCollegeName(intermediateCollegeName);
	emp.setGraduationDetails(graduationDetails);
	emp.setBranch(branch);
	emp.setUniversity(university);
		
	emp.setCompanyName(companyName);
	emp.setRole(role);
	emp.setLocation(location);
	emp.setExperience(experience);
		
		
		//calling the services
		SharedObject.setSession(request.getSession());
		HRMService hrmService=new HRMServicesImplementation();
		try {
			
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		int result =0;
		result = hrmService.employeeUpdate(emp);
		final String ACTION_1 = "results value:"; 
		System.out.println(ACTION_1 +emp);
		System.out.println(ACTION_1 +emp.getFirstName());
		System.out.println(ACTION_1 +emp.getEmployeeId());
		
		
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
		   System.out.println("Please enter correct value");
	   }
}
}


	}


