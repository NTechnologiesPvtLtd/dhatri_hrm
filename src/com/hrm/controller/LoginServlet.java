package com.hrm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrm.dao.HRMDao;
import com.hrm.dao.HRMDaoImplementation;

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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		
		String s1=request.getParameter("employeeId");
		long s2=Long.parseLong(request.getParameter("mobileNumber"));
		//String s2=request.getParameter("firstName");
		
		HRMDao dao=new HRMDaoImplementation();
		try{
			if(dao.login(s1,s2))
			{
				RequestDispatcher rd=request.getRequestDispatcher("LoginView.jsp");
				rd.forward(request,response);
			}
			else
			{
				out.println("enter valid username and password");
			}
		}
			catch(Exception e)
			{
				System.out.println(e);
			}
	}

}
