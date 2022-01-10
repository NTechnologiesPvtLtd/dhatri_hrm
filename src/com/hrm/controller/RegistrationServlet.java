package com.hrm.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrm.bean.EmployeeBean;
import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;
import com.hrm.session.SharedObject;
import com.hrm.util.HRMUtil;

/**
 * Servlet implementation class RegistrationServlet
 */
//@WebServlet("/RegistrationServlet")
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// reading the client values

		response.setContentType("text/html");
		String employeeId = request.getParameter("employeeId");
		String firstName = request.getParameter("firstName").trim();
		String lastName = request.getParameter("lastName").trim();
		String fatherName = request.getParameter("fatherName").trim();
		String gender = request.getParameter("gender").trim();
		String dob = request.getParameter("dob");
		String emailId = request.getParameter("emailId").trim();
		String mobileNumber = request.getParameter("mobileNumber").trim();
		String alternateMobileNumber = request.getParameter("alternatemobileNumber").trim();
		String aadharNo = request.getParameter("aadharNo").trim();
		String panNumber = request.getParameter("panNo").trim();
		String passportNumber = request.getParameter("passportNo").trim();
		String permanentAddress = request.getParameter("permanentAddress").trim();
		String localAddress = request.getParameter("localAddress").trim();
		String schoolName = request.getParameter("schoolName").trim();
		String tenthPassedOut = request.getParameter("tenthPassedOut").trim();
		String intermediateCollegeName = request.getParameter("intermediateCollegeName").trim();
		String interPassedOut = request.getParameter("interPassedOut").trim();
		String graduationDetails = request.getParameter("graduationDetails").trim();
		String graduationPassedOut = request.getParameter("graduationPassedOut").trim();
		String branch = request.getParameter("branch").trim();
		String university = request.getParameter("university").trim();
		String companyName = request.getParameter("companyName").trim();
		String role = request.getParameter("roleDetails").trim();
		String manager = request.getParameter("empmanager");
		String location = request.getParameter("location").trim();
		String experience = request.getParameter("experience").trim();
		String currentCTC = request.getParameter("currentCTC").trim();
		String expectedCTC = request.getParameter("expectedCTC").trim();
		String bankName = request.getParameter("bankName").trim();
		String bankAccNo = request.getParameter("bankAccNo").trim();
		String ifscCode = request.getParameter("ifscCode").trim();

		// inject client reading values into Encapsulation object

		EmployeeBean employeebean = new EmployeeBean();
		employeebean.setEmployeeId(employeeId);
		setMobileNumber(mobileNumber, employeebean);

		if (HRMUtil.notNullCheck(bankAccNo)) {
			employeebean.setBankAccNo(HRMUtil.parseLong(bankAccNo));
		}

		if (bankName != null && !bankName.isEmpty()) {
			try {
				employeebean.setBankname(bankName);
			} catch (Exception e) {
				bankName = null;
			}
		}

		if (ifscCode != null && !ifscCode.isEmpty()) {
			try {
				employeebean.setIfscCode(ifscCode);
			} catch (Exception e) {
				ifscCode = null;
			}
		}

		if (HRMUtil.notNullCheck(alternateMobileNumber)) {
			employeebean.setAlternateMobileNumber(HRMUtil.parseLong(alternateMobileNumber));
		}
		if (HRMUtil.notNullCheck(aadharNo)) {
			employeebean.setAadharNo(HRMUtil.parseLong(aadharNo));
		}
		if (HRMUtil.notNullCheck(panNumber)) {
			employeebean.setPanNumber(panNumber);
		}
		if (HRMUtil.notNullCheck(passportNumber)) {
			employeebean.setPassportNumber(passportNumber);
		}
		if (HRMUtil.notNullCheck(tenthPassedOut)) {
			employeebean.setTenthPassedOut(HRMUtil.parseInt(tenthPassedOut));
		}
		if (HRMUtil.notNullCheck(interPassedOut)) {
			employeebean.setInterPassedOut(HRMUtil.parseInt(interPassedOut));
		}
		if (HRMUtil.notNullCheck(graduationPassedOut)) {
			employeebean.setGraduationPassedOut(HRMUtil.parseInt(graduationPassedOut));
		}

		/*
		 * if (noticePeriod != null && !noticePeriod.isEmpty()) { try {
		 * 
		 * employeebean.setNoticePeriod(Integer.parseInt(noticePeriod)); } catch
		 * (Exception e) { noticePeriod = null; } }
		 */

		if (HRMUtil.notNullCheck(currentCTC)) {
			employeebean.setCurrentCTC(HRMUtil.parseDouble(currentCTC));
		}
		if (HRMUtil.notNullCheck(expectedCTC)) {
			employeebean.setExpectedCTC(HRMUtil.parseDouble(expectedCTC));
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

		// calling the services
		SharedObject.setSession(request.getSession());
		HRMService hrmService = new HRMServicesImplementation();
		int result = hrmService.insertEmployeeData(employeebean);

		try {
			if (result > 0) {

				RequestDispatcher requestDisForward = request.getRequestDispatcher("userupdate.jsp");
				requestDisForward.forward(request, response);
			} else {
				RequestDispatcher requestDisInclude = request.getRequestDispatcher("EmployeeViewDirection.jsp");
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
				System.out.println("testing");

				employeebean.setMobileNumber(Long.parseLong(mobileNumber));
			}

			catch (Exception e) {
				mobileNumber = null;
			}
		}
	}

}
