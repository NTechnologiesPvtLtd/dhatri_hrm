drop database hrm;

create database hrm;
use hrm;
create table employeebean(EmployeeId varchar(20),FirstName varchar(40),LastName varchar(40),FatherName varchar(40),Gender varchar(20),DateofBirth varchar(30),EmailId varchar(40),MobileNo long,AadharNo long,PermanatAddress varchar(40),LocalAddress varchar(40),SchoolName varchar(40),TenthPassedOut int,IntermeadiateCollegeName varchar(40),InterPassedOut int,GraduationDetails varchar(40),GraduationPassedOut int,Branch varchar(30),University varchar(40),CompanyName varchar(40),Role varchar(30),NoticePeriod int,Location varchar(40),Experience varchar(40),CurrentCtc double,ExpectedCtc double);