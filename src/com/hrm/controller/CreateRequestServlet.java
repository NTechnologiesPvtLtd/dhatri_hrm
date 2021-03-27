package com.hrm.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrm.bean.RequestBean;
import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;
import com.hrm.session.SharedObject;

/**
 * Servlet implementation class CreateRequestServlet
 */
@WebServlet("/CreateRequestServlet")
public class CreateRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Object objMail = SharedObject.getFromSession("LoginMailId");
		String senderMailId = null;
		if(objMail!=null){
			senderMailId = (String)senderMailId;
			String reasonName=request.getParameter("reason");
			String textArea=request.getParameter("textArea");
			String recieverMail=request.getParameter("email");
			
			RequestBean requestBean = new RequestBean();
			requestBean.setSenderMail(senderMailId);
			requestBean.setReasonName(reasonName);
			requestBean.setTextArea(textArea);
			requestBean.setRecieverMail(recieverMail);
			HRMService hrmService=new HRMServicesImplementation();
			int result = hrmService.insertRequestData(requestBean);
			try{
			    if(result>0)
			    {
			    	
				    RequestDispatcher requestDisForward=request.getRequestDispatcher("SucessPage.jsp");
				             requestDisForward.forward(request, response);
			    }
			    else
			    {
				    RequestDispatcher requestDisInclude=request.getRequestDispatcher("Employee.jsp");
				             requestDisInclude.include(request, response);
			    }
			}
			
			   catch(Exception e)
			{
				System.out.println(e);
			}
			
			
			
		}
		
	}

}
