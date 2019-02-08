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
<<<<<<< HEAD
=======
		System.out.println(request.getParameter("type"));
>>>>>>> ee881ea478eaa9ba1e1605b6e1f2be7133a40126
		if (SharedObject.getSession() == null) {
			SharedObject.setSession(request.getSession());;
		}

<<<<<<< HEAD
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
=======
		//HttpSession session=request.getSession();  
				try{
			if(service.login(userId,password) && type.equals("admin")){
				/*	if(service.login(userId,password,type)){
				*/
		  //      session.setAttribute("empid",userId);
				System.out.println("true");
				
				RequestDispatcher rd=request.getRequestDispatcher("AdminView.jsp");
				rd.forward(request,response);
				
			}else if (service.login(userId,password) && type.equals("hr")) {
				
				RequestDispatcher rd=request.getRequestDispatcher("hrview.jsp");
				rd.forward(request,response);
				
			}else if (service.login(userId,password) && type.equals("employee")) {
				RequestDispatcher rd=request.getRequestDispatcher("employeeview.jsp");
				rd.forward(request,response);
				
			}else if (service.login(userId,password) && type.equals("employeer")) {
				RequestDispatcher rd=request.getRequestDispatcher("employeerview.jsp");
				rd.forward(request,response);
			}
			else
			{
				RequestDispatcher includeRequest=request.getRequestDispatcher("user.jsp");
>>>>>>> ee881ea478eaa9ba1e1605b6e1f2be7133a40126
				includeRequest.include(request, response);
			}
		} catch (Exception e) {

			System.out.println(e);
		}
	}

}
