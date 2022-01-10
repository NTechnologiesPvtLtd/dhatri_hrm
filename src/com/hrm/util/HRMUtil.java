/**
 * 
 */
package com.hrm.util;

/**
 * @author Narsingh Mahankali
 *
 */
public class HRMUtil {
	 private HRMUtil() {
		    
		  }
	
	public static boolean notNullCheck(String param) {
		return param !=null && !param.isEmpty();
	}
	
	public static long parseLong(String param) {
		long temp = 0;
		try {
			temp = Long.parseLong(param);
		}catch (Exception e) {
			temp = 0;
		}
		return temp;
	}
	
	public static int parseInt(String param) {
		int temp = 0;
		try {
			temp = Integer.parseInt(param);
		}catch (Exception e) {
			temp = 0;
		}
		return temp;
	}
	
	public static double parseDouble(String param) {
		double temp = 0;
		try {
			temp = Double.parseDouble(param);
		}catch (Exception e) {
			temp = 0;
		}
		return temp;
	}
	

}
