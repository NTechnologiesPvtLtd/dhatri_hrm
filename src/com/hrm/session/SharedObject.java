package com.hrm.session;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SharedObject extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	static HttpServletRequest request;
	static HttpServletResponse response;
	public void init(HttpServletRequest request, HttpServletResponse response){
		SharedObject.request=request;
		SharedObject.response=response;
	}
	
	public static HttpSession getInstance(){
		return request.getSession();
	}

}
