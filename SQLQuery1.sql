----------UC1 Create Database----------
create database Payroll_Service;
use Payroll_Service;
----------UC2 Create Table-------------
CREATE TABLE Employee_Payroll(
Id int identity(1,1) primary key,
Name varchar(200),
Salary float,
StartDate date
);