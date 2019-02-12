package com.hrm.controller;

import java.io.IOException;
import java.util.List;

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

@WebServlet("/ManagerEmpServlet")
public class ManagerEmpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ManagerEmpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String employeeid=request.getQueryString();
		System.out.println(employeeid);
		SharedObject.setSession(request.getSession());
		HRMService hrmService=new HRMServicesImplementation();
		HttpSession session=request.getSession();
		//EmployeeBean bean=new EmployeeBean();
		
		System.out.println(employeeid);
		List<EmployeeBean> listBean=hrmService.searchManagerEmp(employeeid);
		session.setAttribute("managerEmp", listBean);
		 RequestDispatcher requestDisForward=request.getRequestDispatcher("ViewManagerEmpData.jsp");
         requestDisForward.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
