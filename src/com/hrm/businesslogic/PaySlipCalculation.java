package com.hrm.businesslogic;

import java.util.HashMap;
import java.util.Map;

import com.hrm.constants.EmployeeConstants;

public class PaySlipCalculation
{
	 
	public static Map<String,Double> paySlipCal(double ctc)
	{
	
		Map<String,Double> map=new HashMap<>();  
		  map.put(EmployeeConstants.BASIC,(40.0/100)*ctc);  
		  map.put(EmployeeConstants.CONVEYANCE,(3.2/100)*ctc);  
		  map.put(EmployeeConstants.HRA,(20.0/100)*ctc); 
		  map.put(EmployeeConstants.SPECIALALLOWANCE,(21.8/100)*ctc);
		  map.put(EmployeeConstants.CITYCOMPENSATORYALL,(10.0/100)*ctc);
		  map.put(EmployeeConstants.MEDICAL,(5.0/100)*ctc);
		  map.put(EmployeeConstants.PROFESSIONALTAX,200.0);
		  map.put(EmployeeConstants.TOTALDEDUCTIONS,200.0);
		  map.put(EmployeeConstants.INCOMETAX,0.0);
		  map.put(EmployeeConstants.OTHERDEDUCTIONS,0.0);
		  map.put(EmployeeConstants.GROSSSALARY,ctc);
		  map.put(EmployeeConstants.NETPAY, ctc-200.0);
		
		return map;
		
	}
}
