package com.hrm.dao;

import java.util.List;
import java.util.Scanner;

import com.hrm.bean.AdminBean;
import com.hrm.bean.RequestBean;
import com.hrm.controller.AdminLogIn;
import com.hrm.services.HRMServicesImplementation;

public class CheckDao1 {

	public static void main(String[] args)
	{
		HRMDaoImplementation hd=new HRMDaoImplementation();
		HRMServicesImplementation hs=new HRMServicesImplementation();
		RequestBean rb=new RequestBean();
		AdminBean ab=new AdminBean();
		Scanner sc=new Scanner(System.in);
		while(true)
		{
			System.out.println("\"Enter the action you want to perform \n"
								+ "(1) AdminLogin \n"
								+"(2) insert into request bean\n"
								+"(3) get rquest details\n"
								+ "(11) AdminLogin services \n"
								+"(0) exit");
		int option =sc.nextInt();
		switch(option)
		{
		case 1:
			System.out.println("enter user name and password");
			String username=sc.next();
			String password=sc.next();
			boolean r=hd.adminlogin(username, password);
			if(r)
			{
				System.out.println("login sucess");
			}
			else 
			{
				System.out.println("invalid userName and Password");
			}
			break;	
			
		case 2://insert into requestbean 
			System.out.println("enter the textarea: ");
			rb.setTextArea(sc.next());
			System.out.println("enter the senderMail: ");
			rb.setSenderMail(sc.next());
			System.out.println("enter the receiverMail: ");
			rb.setRecieverMail(sc.next());
			System.out.println("enter the reasonId: ");
			rb.setReasonId(sc.next());
			System.out.println("enter the reasonName: ");
			rb.setReasonName(sc.next());
			int result=hd.insertRequestData(rb);
			if(result>0)
				System.out.println("Employee data inserted");
			else
				System.out.println("something went wrong");
			break;	
		case 3:
			List<RequestBean> list =hd.ViewRequest();
			System.out.println("employee details are \n");
			for(RequestBean re:list)
			{
				System.out.println(re.getReasonId()+" \t"+re.getReasonName()+"\t"+re.getSenderMail()+"\t"+re.getReceiverMail()+"\t"+re.getTextArea());
			}
			break;
			
			
			
			
			
		case 11:
			System.out.println("enter user name and password");
			String username1=sc.next();
			String password1=sc.next();
			boolean flag=hs.adminlogin(username1, password1);
			if(flag)
			{
				System.out.println("login sucess");
			}
			else 
			{
				System.out.println("invalid userName and Password");
			}
			break;		
			
			
			
			
			
			
			

			
		case 0:
			sc.close();
			System.out.println("exit successfully");
			System.exit(0);
		default:
			System.out.println("enter valid option");
		}
		}
	}
}
