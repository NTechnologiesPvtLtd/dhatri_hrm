drop database hrm;

create database hrm;
use hrm;
create table employeebean(EmployeeId varchar2(20),FirstName varchar2(40),LastName varchar2(40),FatherName varchar2(40),Gender varchar2(20),DateofBirth varchar2(30),EmailId varchar2(40),MobileNo long,AadharNo long,PermanatAddress varchar2(40),LocalAddress varchar2(40),SchoolName varchar2(40),TenthPassedOut int,IntermeadiateCollegeName varchar2(40),InterPassedOut int,GraduationDetails varchar2(40),GraduationPassedOut int,Branch varchar2(30),University varchar2(40),CompanyName varchar2(40),Role varchar2(30),NoticePeriod int,Location varchar2(40),Experience varchar2(40),CurrentCtc double,ExpectedCtc double);