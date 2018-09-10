/**
 * 
 */
package com.hrm.businesslogic;

import java.util.Random;

/**
 * @author LADDU
 *
 */
public class EmployeeIdGenerator {
	public static void generateId()
	{
		String s="DS-";
		Random rd=new Random();
		 System.out.printf(s.substring(0,3)+""+"%04d%n",rd.nextInt(9999));
	}
}
