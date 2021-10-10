package com.hrm.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrm.bean.EmployeeBean;
import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;
import com.hrm.session.SharedObject;

/**
 * Servlet implementation class SearchEmployee
 */
@WebServlet("/SearchEmployee")
public class SearchEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String searchparam = request.getParameter("val");
		
		SharedObject.setSession(request.getSession());
		HRMService hrmService=new HRMServicesImplementation();
		//EmployeeBean bean=new EmployeeBean();
		
		
		  List<EmployeeBean> employeeBean1= hrmService.employeeSearch(searchparam);
		  System.out.println(employeeBean1.size());
          for (int i=0; i<employeeBean1.size(); i++){
              EmployeeBean eb1= employeeBean1.get(i);
              System.out.println(eb1.getFirstName());
              System.out.println(eb1.getLastName());
              System.out.println(eb1.getFatherName());
          }
		
		  request.setAttribute("searchemployee", employeeBean1);
		 
		 RequestDispatcher requestDisForward=request.getRequestDispatcher("searchemployee.jsp");
         requestDisForward.forward(request, response);
	}

}
