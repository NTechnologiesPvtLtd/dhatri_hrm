package com.hrm.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;
import com.hrm.session.SharedObject;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogIn")
public class AdminLogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminLogIn() {
		super();

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String adminid = request.getParameter("AdminId");
		String password = request.getParameter("Password");

		HRMService service = new HRMServicesImplementation();
		if (SharedObject.getSession() == null) {
			SharedObject.setSession(request.getSession());
		}
		try {
			boolean flag = service.adminlogin(adminid, password);

			if (flag) {
				RequestDispatcher rd = request.getRequestDispatcher("AdminView.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher includeRequest = request.getRequestDispatcher("adminlogin.jsp");
				includeRequest.include(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
