package com.hrm.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import com.hrm.bean.EmployeeBean;
import com.hrm.services.HRMServicesImplementation;


public class CheckDao {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HRMDaoImplementation hd=new HRMDaoImplementation();
		EmployeeBean eb=null;
		HRMServicesImplementation hs=new HRMServicesImplementation();
		while(true)
		{System.out.println("\n");
		System.out.println("1->Insert the Employee Details"
				+ "\n2->search Employee Details with parameter"
				+ "\n3->search manager with the role"
				+"\n4->search employees for particular manager"
				+ "\n5->search the emailid with firstname"
				+ "\n6->login checking"
				+ "\n7->search logger mail id"
				+ "\n8->search(without any params)"
				
				+ "\n9->EmployeeUpdate"
				+ "\n10.check duplicate data"
				+ "\n11.hrm service login"
				+ "\n12.exit");
		Scanner sc=new Scanner(System.in);
		
		
		int n=sc.nextInt();
		switch(n)
		{
		case 1://insert
			eb=new EmployeeBean();
			   System.out.println("enter employeeid");
		      String id=sc.next();
		      
		       eb.setEmployeeId(id);
		       System.out.println("enter employeeFirstName");
		       String fname=sc.next();
		       eb.setFirstName(fname);
		       System.out.println("enter employeelastName");
		       String sname=sc.next();
				eb.setLastName(sname);
				System.out.println("enter employeefatherName");
			       String fathername=sc.next();
				eb.setFatherName(fathername);
				System.out.println("enter gender");
			       String gender=sc.next();
				eb.setGender(gender);
				System.out.println("enter dob");
			       String dob=sc.next();
				eb.setDob(dob);
				System.out.println("enter email");
			       String email=sc.next();
				eb.setEmailId(email);
				System.out.println("enter mobilenumber");
			      long mobilenumber=sc.nextLong();
				eb.setMobileNumber(mobilenumber);
				System.out.println("enter alternatemobile");
			     long amob=sc.nextLong();
				eb.setAlternateMobileNumber(amob);
				System.out.println("enter aadhar card");
			       String aadharcard=sc.next();
				eb.setAadharNo(Long.parseLong(aadharcard));
				System.out.println("enter pancard card");
			       String pancard=sc.next();
				eb.setPanNumber(pancard);
				System.out.println("enter passportnumber");
			       String passportnumber=sc.next();
				eb.setPassportNumber(passportnumber);
				System.out.println("enter permenant address");
			       String permenantadd=sc.next();
				eb.setPermanentAddress(permenantadd);
				System.out.println("enter local address");
			       String localadd=sc.next();
				eb.setLocalAddress( localadd);
				System.out.println("enter schoolname");
			       String schoolname=sc.next();
				eb.setSchoolName(schoolname);
				
			       System.out.println("enter TenthPassedOut");
			       String TenthPassedOut=sc.next();
				eb.setTenthPassedOut(Integer.parseInt(TenthPassedOut));
				
			       System.out.println("intercollagename");
			       String intercollagename=sc.next();
				eb.setIntermediateCollegeName(intercollagename);
				System.out.println("enter interpassedoutyear");
			       String interpassedoutyear=sc.next();
				eb.setInterPassedOut(Integer.parseInt(interpassedoutyear));
				System.out.println("enter graduationDetails");
			       String graduationDetails=sc.next();
				eb.setGraduationDetails(graduationDetails);
				System.out.println("enter GraduationPassedOut");
			       String GraduationPassedOut=sc.next();
				eb.setGraduationPassedOut(Integer.parseInt(GraduationPassedOut));
				System.out.println("enter branch");
			       String branch=sc.next();
				eb.setBranch(branch);
				System.out.println("enter university");
			       String university=sc.next();
				eb.setUniversity(university);
				System.out.println("enter companyName");
			       String companyName=sc.next();
				eb.setCompanyName(companyName);
				System.out.println("enter role");
			       String role=sc.next();
				eb.setRole(role);
				System.out.println("enternoticePeriod");
			       String noticePeriod=sc.next();
				eb.setNoticePeriod(Integer.parseInt(noticePeriod));
				System.out.println("enter location");
			       String location=sc.next();
				eb.setLocation(location);
				System.out.println("enterexperience");
			       String experience=sc.next();
				eb.setExperience(experience);
				System.out.println("enter currentCTC");
			       String currentCTC=sc.next();
				eb.setCurrentCTC(Double.parseDouble(currentCTC));
				System.out.println("enter expectedCTC");
			       String expectedCTC=sc.next();
				eb.setExpectedCTC(Double.parseDouble(expectedCTC));
				System.out.println("enter manager");
			       String manager=sc.next();
				eb.setManager(manager);
				System.out.println("enter bankname");
			       String bankname=sc.next();
				eb.setBankname(bankname);
				System.out.println("enter bankAccNo");
			       String bankAccNo=sc.next();
				eb.setBankAccNo(Long.parseLong(bankAccNo));
				System.out.println("enter ifscCode");
			       String ifscCode=sc.next();
				eb.setIfscCode(ifscCode);
		     
		       
			   int result=hd.insertEmployeeData(eb);
			   if(result>0) {
					System.out.println("inserted employee data");
				}else {
					System.out.println("something went worng, Please try again......");
		        }
		 break;	

		
		case 2://serach with param
			  System.out.println("please enter the Employee para,");
			  try {
			  String id1=sc.next();
			  List<EmployeeBean> lb;
			   lb=hd.search(id1);
			  if(lb!=null)
			  {
			 
			 System.out.println("this is details");
			 for(EmployeeBean eb1:lb)
			 {
				 System.out.println(eb1.getDob()+"   "+eb1.getBankAccNo());
			 }
			  }
			  else
			  {
				  System.out.println("please try again with correct id.............!");
			  }
			  }
			  catch(Exception e)
			  {
				  System.out.println("please enter the integer value................!");
			  }
	      break;
	           
		case 3://search manager
			System.out.println("enter role");
			
			String role1=sc.next();
			
			List<EmployeeBean> li =hd.searchManager(role1);
				for(EmployeeBean e:li)
				{
					System.out.println(e.getManager());
				}
				break;
	
		case 4://search employees for particular manager
			System.out.println("enter the manager ");
			String manager1=sc.next();
			List<EmployeeBean> lb2=hd.searchManagerEmp(manager1);
			if(lb2!=null)
			{
				for(EmployeeBean b1:lb2)
				{
					System.out.println(b1.getFirstName());
				}
			}
			break;
			
		case 5://search the emailid with firstname
			System.out.println("entr firstname");
			String fname1=sc.next();
			EmployeeBean eb2=hd.searchGmailId(fname1);
			System.out.println(eb2.getEmailId());
		break;
		case 6://login checking
			
			System.out.println("enter the employeeid");
			String empid=sc.next();
			System.out.println("enter the mobile number");
			long mnumber=sc.nextLong();
			boolean flag=hd.login(empid, mnumber);
			if(flag==true)
			{
				System.out.println("login sucsess");
				
			}
			else
			{
				System.out.println("login fail");
			}
		break;
		case 7://search logger mail id
			System.out.println("enter loggerid");
			String empid2=sc.next();
			try {
				EmployeeBean bn=hd.searchLoggerEmail(empid2);
				System.out.println(bn.getEmailId());
				
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			break;
		case 8://general search
			System.out.println("general search(without any params)");
			List<EmployeeBean> lb3=hd.search();
			for(EmployeeBean eb3:lb3)
			{
				System.out.println(eb3.getFirstName());
				
			}
		break;
		case 9:
			eb=new EmployeeBean();
			System.out.println("enter employeeid");
	      String id1=sc.next();
	      
	       eb.setEmployeeId(id1);
	       System.out.println("enter employeeFirstName");
	       String fname2=sc.next();
	       eb.setFirstName(fname2);
	       System.out.println("enter employeelastName");
	       String sname2=sc.next();
			eb.setLastName(sname2);
			System.out.println("enter employeefatherName");
		       String fathername1=sc.next();
			eb.setFatherName(fathername1);
			System.out.println("enter gender");
		       String gender1=sc.next();
			eb.setGender(gender1);
			System.out.println("enter dob");
		       String dob1=sc.next();
			eb.setDob(dob1);
			System.out.println("enter email");
		       String email1=sc.next();
			eb.setEmailId(email1);
			System.out.println("enter mobilenumber");
		      long mobilenumber1=sc.nextLong();
			eb.setMobileNumber(mobilenumber1);
			System.out.println("enter alternatemobile");
		     long amob1=sc.nextLong();
			eb.setAlternateMobileNumber(amob1);
			System.out.println("enter aadhar card");
		       String aadharcard1=sc.next();
			eb.setAadharNo(Long.parseLong(aadharcard1));
			System.out.println("enter pancard card");
		       String pancard1=sc.next();
			eb.setPanNumber(pancard1);
			System.out.println("enter passportnumber");
		       String passportnumber1=sc.next();
			eb.setPassportNumber(passportnumber1);
			System.out.println("enter permenant address");
		       String permenantadd1=sc.next();
			eb.setPermanentAddress(permenantadd1);
			System.out.println("enter local address");
		       String localadd1=sc.next();
			eb.setLocalAddress( localadd1);
			System.out.println("enter schoolname");
		       String schoolname1=sc.next();
			eb.setSchoolName(schoolname1);
			
		       System.out.println("enter TenthPassedOut");
		       String TenthPassedOut1=sc.next();
			eb.setTenthPassedOut(Integer.parseInt(TenthPassedOut1));
			
		       System.out.println("intercollagename");
		       String intercollagename1=sc.next();
			eb.setIntermediateCollegeName(intercollagename1);
			System.out.println("enter interpassedoutyear");
		       String interpassedoutyear1=sc.next();
			eb.setInterPassedOut(Integer.parseInt(interpassedoutyear1));
			System.out.println("enter graduationDetails");
		       String graduationDetails1=sc.next();
			eb.setGraduationDetails(graduationDetails1);
			System.out.println("enter GraduationPassedOut");
		       String GraduationPassedOut1=sc.next();
			eb.setGraduationPassedOut(Integer.parseInt(GraduationPassedOut1));
			System.out.println("enter branch");
		       String branch1=sc.next();
			eb.setBranch(branch1);
			System.out.println("enter university");
		       String university1=sc.next();
			eb.setUniversity(university1);
			System.out.println("enter companyName");
		       String companyName1=sc.next();
			eb.setCompanyName(companyName1);
			System.out.println("enter role");
		       String role2=sc.next();
			eb.setRole(role2);
			System.out.println("enternoticePeriod");
		       String noticePeriod1=sc.next();
			eb.setNoticePeriod(Integer.parseInt(noticePeriod1));
			System.out.println("enter location");
		       String location1=sc.next();
			eb.setLocation(location1);
			System.out.println("enterexperience");
		       String experience1=sc.next();
			eb.setExperience(experience1);
			System.out.println("enter currentCTC");
		       String currentCTC1=sc.next();
			eb.setCurrentCTC(Double.parseDouble(currentCTC1));
			System.out.println("enter expectedCTC");
		       String expectedCTC1=sc.next();
			eb.setExpectedCTC(Double.parseDouble(expectedCTC1));
			System.out.println("enter manager");
		       String manager2=sc.next();
			eb.setManager(manager2);
			System.out.println("enter bankname");
		       String bankname1=sc.next();
			eb.setBankname(bankname1);
			System.out.println("enter bankAccNo");
		       String bankAccNo1=sc.next();
			eb.setBankAccNo(Long.parseLong(bankAccNo1));
			System.out.println("enter ifscCode");
		       String ifscCode1=sc.next();
			eb.setIfscCode(ifscCode1);
	     
	       
		   int result1=hd.employeeUpdate(eb);
		   if(result1>0)
		   {
			   System.out.println("updated sucessfully");
		   }
		   else
		   {
			   System.out.println("not updated");
		   }
		   break;
		case 10:
			eb=new EmployeeBean();
			System.out.println("enter employeeid");
			String empid3=sc.next();
			eb.setEmployeeId(empid3);
			
			boolean flag1=hd.duplicateData(eb);
			if(flag1==true)
			{
				System.out.println("there is duplicated data");
			}
			else
			{
				System.out.println("there is no duplicate data");
			}
			break;
		case 11:
			System.out.println("enter username ");
			String id5=sc.next();
			System.out.println("enter password ");
			long password=sc.nextLong();
			boolean flag3=hs.login(id5, password);
			System.out.println(flag3);
			break;
		case 12:
			sc.close();
			System.out.println("you are exited run again to do operations.....");
			System.exit(0);
			
			
			
		}
		}
		
		}
		  
		




	}


