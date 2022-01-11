package com.hrm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import com.hrm.constants.EmployeeConstants;
import com.hrm.dao.HRMDao;
import com.hrm.dao.HRMDaoImplementation;
import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;
import com.hrm.session.SharedObject;

/**
 * Servlet implementation class LoginServlet
 */
//@WebServlet("/LoginServlet")													//by clicking login it comes to login servlet
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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
		response.getWriter().append("Served at: ")
				.append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request,												//our method is doPost
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.setContentType("text/html");
		try {
			PrintWriter out = response.getWriter();
		} catch (Exception e) {
			e.printStackTrace();
		}

		String userId = request.getParameter("employeeId").trim();										//accepting employeeId
		long password;
		try {
			password = Long.parseLong(request.getParameter("mobileNumber"));							//accepting password
		} catch (Exception e) {
			password = 0;
		}
		String password1 = request.getParameter("mobileNumber").trim();
		
		String type = request.getParameter("type").toLowerCase();										//accepting type as admin or employee or manager etc

		HRMService service = new HRMServicesImplementation();											// going to implementation class like insert,login,update etc
		System.out.println(request.getParameter("type"));
		if (SharedObject.getSession() == null) {
			SharedObject.setSession(request.getSession());												//session object created
			;
		}
		// HttpSession session=request.getSession();
		
		try {
			if (type.equals("admin")) {																	//here  if accepted type= admin then goes to service.adminlogin method
				boolean flag1 = service.adminlogin(userId, password1);
				if (flag1) {

				System.out.println("true");

				RequestDispatcher rd = request
						.getRequestDispatcher("AdminView.jsp");											//if true then goes to adminview,jsp page
				rd.forward(request, response);

			} 
			}
			boolean flag = service.login(userId, password);
			if (flag) {
				 if (type.equals("hr")) {

					RequestDispatcher rd = request
							.getRequestDispatcher("hrview.jsp");
					rd.forward(request, response);

				} else if (type.equals("employee")) {
					
					RequestDispatcher rd = request
							.getRequestDispatcher("EmployeeView.jsp");
					rd.forward(request, response);

				} else if (type.equals("employeer")) {
					
					RequestDispatcher rd = request
							.getRequestDispatcher("employeerview.jsp");
					rd.forward(request, response);
				} else if (type.equals("manager")) {
					RequestDispatcher rd = request
							.getRequestDispatcher("managerHomepage.jsp");
					rd.forward(request, response);

				}
			} else {
				RequestDispatcher includeRequest = request
						.getRequestDispatcher("user.jsp");
				includeRequest.include(request, response);
			}
			}
		 catch (Exception e) {
			e.printStackTrace();
			// System.out.println(e);
		}
	}

}
