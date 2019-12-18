package com.hrm.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hrm.bean.PayslipBean;

/**
 * Servlet implementation class PayslipServlet
 */
@WebServlet("/PayslipServlet")
public class PayslipServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public PayslipServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   
	

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("the value are coming from post");
		
		   String empName = request.getParameter("emploeeName");
		   String empid =request.getParameter("employeeID");
		   String Designation = request.getParameter("desigantion");
		   String doj =request.getParameter("date of joining");
		   String bsalary =request.getParameter("basicSalary");
		   String Bank =request.getParameter("bank");
		   String bankaccountno =request.getParameter("bankAccountNO");
		   
		   
		   PayslipBean pb =new PayslipBean();
		   pb.setEmployeeId(empid);
		   pb.setEmployeeName(empName);
		   pb.setEmployeedesignation(Designation);
		   pb.setDoj(doj);
		   pb.setBank(Bank);
		   long bankacc =0; 
			  try {
				  bankacc=Long.parseLong(bankaccountno);
			  
			  }catch(Exception e){ 
				  
				  bankacc =0;
			  }
		   pb.setBankAccountno(bankacc);
		   double bs =0; 
			  try {
				  bs=Double.parseDouble(bsalary);
			  
			  }catch(Exception e){ 
				  
				  bs =0;
			  }
		     pb.setBasicSalary(bs);
		   
		   HttpSession session = request.getSession();
			session.setAttribute("payslipdetails", pb);
			
	         RequestDispatcher payslip =request.getRequestDispatcher("payslip2.jsp");
	         payslip.forward(request, response);
	         
		   
		 }
	}


