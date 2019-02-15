package com.hrm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;
import com.hrm.session.SharedObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		try{
	PrintWriter out=response.getWriter();}catch(Exception e){
		e.printStackTrace();
	}
		
		String userId =request.getParameter("employeeId").trim();
		long password;
		try{
			password=Long.parseLong(request.getParameter("mobileNumber"));	
		}
		catch (Exception e) {
			password=0;
		}
		
		String type=request.getParameter("type").toLowerCase();
		
		HRMService service = new HRMServicesImplementation();
		System.out.println(request.getParameter("type"));
		if (SharedObject.getSession() == null) {
			SharedObject.setSession(request.getSession());
		}
		try{
			if(service.login(userId,password) && type.equals("admin")){
				
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
			}else if (service.login(userId,password) && type.equals("manager")) {
				RequestDispatcher rd=request.getRequestDispatcher("managerHomepage.jsp");
				rd.forward(request,response);
				
			}
			else
			{
				RequestDispatcher includeRequest=request.getRequestDispatcher("user.jsp");
				includeRequest.include(request, response);
			}
		}
			catch(Exception e)
			{
				e.printStackTrace();
				}
	}

}
