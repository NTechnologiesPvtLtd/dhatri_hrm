package com.hrm.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;

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
	private static final char[] passportNumber = null;
	private char[] panNo;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// reading the client values

		response.setContentType("text/html");
		String employeeId = request.getParameter("employeeId");
		System.out.println(employeeId);
        String firstName = request.getParameter("firstName").trim();
		System.out.println(firstName);
		String lastName = request.getParameter("lastName").trim();
		System.out.println(lastName);
		String fatherName = request.getParameter("fatherName").trim();
		System.out.println(fatherName);
		String gender = request.getParameter("gender").trim();
		System.out.println(gender);
		String dob = request.getParameter("dob");
		System.out.println(dob);
		String emailId = request.getParameter("emailId").trim();
		System.out.println(emailId);
		String mobileNumber = request.getParameter("mobileNumber").trim();
		System.out.println(mobileNumber);
		String alternateMobileNumber = request.getParameter("alternatemobileNumber").trim();
		System.out.println(alternateMobileNumber);
		String aadharNo = request.getParameter("aadharNo").trim();
		System.out.println(aadharNo);
		String panNumber = request.getParameter("panNo").trim();
		System.out.println(panNumber);
		String passportNumber = request.getParameter("passportNo").trim();
		System.out.println(passportNumber);
		String permanentAddress = request.getParameter("permanentAddress").trim();
		System.out.println(permanentAddress);
		String localAddress = request.getParameter("localAddress").trim();
		System.out.println(localAddress);

		String schoolName = request.getParameter("schoolName").trim();
		System.out.println(schoolName);
		String tenthPassedOut = request.getParameter("tenthPassedOut").trim();
		System.out.println(tenthPassedOut);
		String intermediateCollegeName = request.getParameter("intermediateCollegeName").trim();
		System.out.println(intermediateCollegeName);
		String interPassedOut = request.getParameter("interPassedOut").trim();
		System.out.println(interPassedOut);
		String graduationDetails = request.getParameter("graduationDetails").trim();
		System.out.println(graduationDetails );
		String graduationPassedOut = request.getParameter("graduationPassedOut").trim();
		System.out.println( graduationPassedOut );
		String branch = request.getParameter("branch").trim();
		System.out.println(branch );
		String university = request.getParameter("university").trim();
		System.out.println(university );
		String companyName = request.getParameter("companyName").trim();
		System.out.println(companyName );
		String role = request.getParameter("roleDetails").trim();
		System.out.println( role  );
		String noticePeriod = request.getParameter("noticePeriod").trim();
		System.out.println(noticePeriod);
		String manager = request.getParameter("empmanager").trim();
		System.out.println(manager);
		String location = request.getParameter("location").trim();
		System.out.println(location);
		String experience = request.getParameter("experience").trim();
		System.out.println(experience);
		String currentCTC = request.getParameter("currentCTC").trim();
		System.out.println( currentCTC);
		String expectedCTC = request.getParameter("expectedCTC").trim();
		System.out.println( expectedCTC);
		
		String bankName = request.getParameter("bankName").trim();
		System.out.println(bankName);
		String bankAccNo = request.getParameter("bankAccNo").trim();
		System.out.println(bankAccNo);
		String ifscCode = request.getParameter("ifscCode").trim();
		System.out.println(ifscCode);

		// inject client reading values into Encapsulation object

		EmployeeBean employeebean = new EmployeeBean();
		employeebean.setEmployeeId(employeeId);
		setMobileNumber(mobileNumber, employeebean);
		
		if(bankAccNo!=null && !bankAccNo.isEmpty()) {
			try {
				employeebean.setBankAccNo(Long.parseLong(bankAccNo));
			}catch(Exception e) {
				bankAccNo = null;
			}
		}
		
		if(bankName!=null && !bankName.isEmpty()) {
			try {
				employeebean.setBankname(bankName);
			}catch(Exception e) {
				bankName = null;
			}
		}
		
		if(ifscCode!=null && !ifscCode.isEmpty()) {
			try {
				employeebean.setIfscCode(ifscCode);
			}catch(Exception e) {
				ifscCode = null;
			}
		}
		
		if(alternateMobileNumber!=null && !alternateMobileNumber.isEmpty()) {
			try {
				employeebean.setAlternateMobileNumber(Long.parseLong(alternateMobileNumber));
			}catch(Exception e) {
				alternateMobileNumber = null;
				System.out.println("error in the alternateMobileNumber");
			}
		}

		if (aadharNo != null && !aadharNo.isEmpty()) {
			try {

				employeebean.setAadharNo(Long.parseLong(aadharNo));
			}

			catch (Exception e) {
				aadharNo = null;
				System.out.println("error in the aadharNo ");
			}
		}
		
		if(panNumber!=null && !panNumber.isEmpty()) {
			try {
				employeebean.setPanNumber(panNumber);
			}catch(Exception e) {
				panNumber = null;
			}
		}
		
		if(passportNumber!=null && !passportNumber.isEmpty()) {
			try {
				employeebean.setPassportNumber(passportNumber);
			}catch(Exception e) {
				passportNumber = null;
			}
		}

		if (tenthPassedOut != null && !tenthPassedOut.isEmpty()) {
			try {

				employeebean
						.setTenthPassedOut(Integer.parseInt(tenthPassedOut));
			}

			catch (Exception e) {
				tenthPassedOut = null;
			}
		}

		if (interPassedOut != null && !interPassedOut.isEmpty()) {
			try {

				employeebean
						.setInterPassedOut(Integer.parseInt(interPassedOut));
			}

			catch (Exception e) {
				interPassedOut = null;
			}
		}

		if (graduationPassedOut != null && !graduationPassedOut.isEmpty()) {
			try {

				employeebean.setGraduationPassedOut(Integer
						.parseInt(graduationPassedOut));
			}

			catch (Exception e) {
				graduationPassedOut = null;
			}
		}

		/*
		 * if (noticePeriod != null && !noticePeriod.isEmpty()) { try {
		 * 
		 * employeebean.setNoticePeriod(Integer.parseInt(noticePeriod)); } catch
		 * (Exception e) { noticePeriod = null; } }
		 */

		if (currentCTC != null && !currentCTC.isEmpty()) {
			try {

				employeebean.setCurrentCTC(Double.parseDouble(currentCTC));
			} catch (Exception e) {
				currentCTC = null;
			}
		}
		

		
		  if (expectedCTC != null && !expectedCTC.isEmpty()) { try {
		  
		  employeebean.setExpectedCTC(Double.parseDouble(expectedCTC)); } catch
		  (Exception e) { expectedCTC = null; } }
		 

			employeebean.setEmployeeId(employeeId);
			employeebean.setFirstName(firstName);
			employeebean.setLastName(lastName);
			employeebean.setFatherName(fatherName);
			employeebean.setGender(gender);
			employeebean.setDob(dob);
			employeebean.setEmailId(emailId);
			employeebean.setMobileNumber(Long.parseLong(mobileNumber));
		    employeebean.setAlternateMobileNumber(Long.parseLong(alternateMobileNumber));
			employeebean.setPermanentAddress(permanentAddress);
			employeebean.setLocalAddress(localAddress);
			employeebean.setAadharNo(Long.parseLong(aadharNo));
			employeebean.setPanNumber(panNumber);
			employeebean.setPassportNumber(passportNumber);
			employeebean.setPermanentAddress(permanentAddress);
			employeebean.setLocalAddress(localAddress);
			
			employeebean.setSchoolName(schoolName);
			employeebean.setTenthPassedOut(Integer.parseInt(tenthPassedOut));
			employeebean.setIntermediateCollegeName(intermediateCollegeName);
			employeebean.setInterPassedOut(Integer.parseInt(interPassedOut));
			employeebean.setGraduationDetails(graduationDetails);
			employeebean.setGraduationPassedOut(Integer.parseInt(graduationPassedOut));
			employeebean.setBranch(branch);
			employeebean.setUniversity(university);

			employeebean.setCompanyName(companyName);
			employeebean.setRole(role);
			
			employeebean.setCurrentCTC(Long.parseLong(currentCTC));
			employeebean.setNoticePeriod(Integer.parseInt(noticePeriod));
			employeebean.setExpectedCTC(Double.parseDouble(expectedCTC));

			employeebean.setManager(manager);
			employeebean.setLocation(location);
			employeebean.setExperience(experience);
			employeebean.setBankAccNo(Long.parseLong(bankAccNo));
			employeebean.setBankname(bankName);
			employeebean.setIfscCode(ifscCode);

			// calling the services
			SharedObject.setSession(request.getSession());
			HRMService hrmService = new HRMServicesImplementation();
			int result = hrmService.insertEmployeeData(employeebean);


		try {
			if (result > 0) {

				RequestDispatcher requestDisForward = request
						.getRequestDispatcher("userupdate.jsp");
				requestDisForward.forward(request, response);
			} else {
				RequestDispatcher requestDisInclude = request
						.getRequestDispatcher("EmployeeRegistration.jsp");
				requestDisInclude.include(request, response);
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}
	}

	/**
	 * @param mobileNumber
	 * @param employeebean
	 */
	private void setMobileNumber(String mobileNumber, EmployeeBean employeebean) {
		if (mobileNumber != null && !mobileNumber.isEmpty()) {
			try {

				employeebean.setMobileNumber(Long.parseLong(mobileNumber));
			}

			catch (Exception e) {
				mobileNumber = null;
			}
		}
	}

}
