package com.hrm.session;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SharedObject {
	
	private static HttpServletRequest request;
	private static HttpSession session;
	private SharedObject(){
		//do nothing
	}
	/**
	 * 
	 * @param request
	 */
	public static void setRequest(HttpServletRequest request){
		SharedObject.request=request;
	}
	/**
	 * 
	 * @return
	 */
	public static HttpServletRequest getRequest(){
		return request;
	}
	/**
	 * 
	 * @return
	 */
	public static HttpSession getSession(){
		return session;
	}
	/**
	 * 
	 * @param key
	 * @param value
	 */
	public static void putInToSession(String key, Object value){
		getSession().setAttribute(key, value);
	}
	/**
	 * 
	 * @param key
	 * @return
	 */
	public static Object getFromSession(String key){
		return getSession().getAttribute(key);
	}
	/**
	 * 
	 * @param key
	 */
	public static void deleteObjectFromSession(String key){
		getSession().removeAttribute(key);
	}
	/**
	 * @param session the session to set
	 */
	public static void setSession(HttpSession session) {
		SharedObject.session = session;
	}
	
	
	
}
