package com.hrm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hrm.bean.EmployeeBean;
import com.hrm.services.HRMService;
import com.hrm.services.HRMServicesImplementation;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String FirstName=request.getParameter("FirstName");
		String LastName=request.getParameter("LastName");
		String FatherName=request.getParameter("FatherName");
		String Gender=request.getParameter("Gender");
		
		Date dateOfBirth=null;
		try{
		SimpleDateFormat sdf=new SimpleDateFormat();
		
		dateOfBirth=sdf.parse(request.getParameter("dob"));
		}
		catch(Exception e)
		{
			dateOfBirth=new Date();
		}
		String EmailId=request.getParameter("EmailId");
		String MobileNo= request.getParameter("MobileNo");
		String AadharNo= request.getParameter("AadharNo");
		String PermanatAddress=request.getParameter("PermanatAddress");
		String LocalAddress=request.getParameter("localAddress");
		String SchoolName=request.getParameter("SchoolName");
		String tenthPassedout=request.getParameter("tenthPassedout");
		//int Passout=Integer.parseInt(request.getParameter("Passout"));
		String intermeadiateCollegeName=request.getParameter("IntermeadiateCollegeName");
		String InterPassedout=request.getParameter("interPassedout");
		String GraduationDetails=request.getParameter("GraduationDetails");
		String GraduationPassedout=request.getParameter("GraduationPassedout");
		String Branch=request.getParameter("Branch");
		String University=request.getParameter("University");
		String CompanyName=request.getParameter("CompanyName");
		String Role=request.getParameter("Role");
		String NoticePeriod=request.getParameter("NoticePeriod");
		String Location=request.getParameter("Location");
		String Experience=request.getParameter("Experience");
		String CurrentCtc=request.getParameter("CurrentCtc");
		String ExpectedCtc=request.getParameter("ExpectedCtc");
		String EmployeeId=request.getParameter("EmployeeId");
		
		EmployeeBean emp=new EmployeeBean();
		emp.setFirstName(FirstName);
		emp.setLastName(LastName);
		emp.setFatherName(FatherName);
		emp.setGender(Gender);
		emp.setEmailId(EmailId);
		if(MobileNo!=null && !MobileNo.isEmpty())
		{
			emp.setMobileNumber(Long.parseLong(MobileNo));
		}
		if(AadharNo!=null && !AadharNo.isEmpty())
		{
			emp.setAadharNo(Long.parseLong(AadharNo));
		}
		emp.setDob(dateOfBirth);
		emp.setPermanentAddress(PermanatAddress);
		emp.setLocalAddress(LocalAddress);
		emp.setSchoolName(SchoolName);
		if(tenthPassedout!=null && !tenthPassedout.isEmpty())
		{
			emp.setTenthPassedOut(Integer.parseInt(tenthPassedout));
		}
		emp.setIntermediateCollegeName(intermeadiateCollegeName);
		if(InterPassedout!=null && !InterPassedout.isEmpty())
		{
			emp.setInterPassedOut(Integer.parseInt(InterPassedout));
		}
		emp.setGraduationDetails(GraduationDetails);
		if(GraduationPassedout!=null && !GraduationPassedout.isEmpty())
		{
			emp.setGraduationPassedOut(Integer.parseInt(GraduationPassedout));
		}
		emp.setBranch(Branch);
		emp.setUniversity(University);
		emp.setCompanyName(CompanyName);
		emp.setRole(Role);
		//emp.setNoticePeriod(NoticePeriod);
		if(NoticePeriod!=null && !NoticePeriod.isEmpty())
		{
			emp.setNoticePeriod(Integer.parseInt(NoticePeriod));
		}
		emp.setLocation(Location);
		emp.setExperience(Experience);
		if(CurrentCtc!=null && !CurrentCtc.isEmpty())
		{
		
			emp.setCurrentCTC(Double.parseDouble(CurrentCtc));
		}
		if( ExpectedCtc!=null && ! ExpectedCtc.isEmpty())
		{
			emp.setExpectedCTC(Double.parseDouble( ExpectedCtc));
		}
		
		
		emp.setEmployeeId(EmployeeId);
		
		//calling the service
		HRMService hrmService=new HRMServicesImplementation();
		
		int status=hrmService.update(emp);
		//response.sendRedirect("LoginView.jsp");
		if(status>0)
		{
			//response.sendRedirect("LoginView.jsp");
			response.sendRedirect("LoginView.jsp");
			//out.println("the record is updated");
			//response.sendRedirect("LoginView.jsp");	
		}
		else{
			out.println("unable to update record");}
		out.close();
		
	}

}
