package com.hrm.businesslogic;

import java.text.DecimalFormat;
import java.util.Random;

public class EmployeeIdGenerator
{
	private static String employeeId="DS-";
	
	
	public static String getEmployeeId()
	{
		employeeId=employeeId+unqiueNo();
		return employeeId;
	}
	
	private final static String unqiueNo()
	{
		String fourDigits="";
		String temp=""+factorial();
		if(temp.length()>4)
		{
			for(int i=0;i<=3;i++)
				fourDigits=fourDigits+temp.charAt(i);
		}
		else
		{
			
			DecimalFormat df = new DecimalFormat("0000");
			int number=Integer.parseInt(temp);
			
			 fourDigits=df.format(number);
			
		}
		
		
		return fourDigits;
		
	}
	
	private static int factorial()
	{
		int fact=1;
		Random random=new Random();
		int randomNo=random.nextInt(10);
		
		for(int i=1;i<randomNo;i++)
		{
			fact=fact*i;
		}
		
		return fact;
	}
	public static void main(String[] args) {
		System.out.println(getEmployeeId());
	}

}
