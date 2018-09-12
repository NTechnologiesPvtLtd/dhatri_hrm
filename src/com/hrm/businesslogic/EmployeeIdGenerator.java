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
	public static String generateId()
	{
		String compantString="DS-";
		String employeeId="";
		Random rd=new Random();
		int number = rd.nextInt(99);
		employeeId=compantString+factOfNumber(number);
		return employeeId;
	}
	
	public static String factOfNumber(int number){
		String fourDigits="";
		for(int i=number-1;i>=1;i--){
			number=number*i;
		}
		String fact=new String(new Integer(number).toString());
		if(fact.length()<4){
			fourDigits = String.format("%04d", number);
		}else{
			for(int i=0;i<=3;i++){
				fourDigits=fourDigits+fact.charAt(i);
			}
		}
		return fourDigits;
		}
	
	public static void main(String[] args) {
		for(int i=0;i<=5;i++)
		System.out.println(generateId());
	}
}
