package com.hrm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrm.constants.EmployeeConstants;
import com.hrm.dao.HRMDao;
import com.hrm.dao.HRMDaoImplementation;
import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;
import com.hrm.session.SharedObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		System.out.println("Login servlet");
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
		response.getWriter().append("Served at: ")
				.append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String userId = request.getParameter("employeeId").trim();
		long password;
		try {
			password = Long.parseLong(request.getParameter("mobileNumber"));
		} catch (Exception e) {
			password = 0;
		}

		HRMService service = new HRMServicesImplementation();
		if (SharedObject.getSession() == null) {
			SharedObject.setSession(request.getSession());;
		}

		try {

			if (service.login(userId, password)) {
				SharedObject.putInToSession(EmployeeConstants.EMPLOYEE_ID,
						userId);
				RequestDispatcher rd = request
						.getRequestDispatcher("LoginView.jsp");
				rd.forward(request, response);
			} else {
				SharedObject.putInToSession(EmployeeConstants.ERROR_MSG_UI,
						"Invalid Credentials");
				RequestDispatcher includeRequest = request
						.getRequestDispatcher("user.jsp");
				includeRequest.include(request, response);
			}
		} catch (Exception e) {

			System.out.println(e);
		}
	}

}
