package com.hrm.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrm.constants.EmployeeConstants;
import com.hrm.session.SharedObject;

/**
 * Servlet implementation class AdminLogOutServlet
 */
@WebServlet("/AdminLogOutServlet")
public class AdminLogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AdminLogOutServlet() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SharedObject.deleteObjectFromSession(EmployeeConstants.ADMINID);
		SharedObject.deleteObjectFromSession(EmployeeConstants.ERROR_MSG_UI);
		RequestDispatcher forward=request.getRequestDispatcher("adminlogin.jsp");
		forward.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

}
