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
----------UC3 Create-add(C)-------------
INSERT INTO Employee_Payroll (Name, Salary, StartDate) VALUES ('Salman', 25677.77, CAST('2000-01-01' as Date));
INSERT INTO Employee_Payroll (Name, StartDate) VALUES ('Dhoni', getdate());
----------UC4 Select-Read(R)------------
select * from Employee_Payroll;
----------UC5 Retrieve Salary Data For A Particular Employee----------
select salary from employee_payroll where Name= 'Salman';
select * from employee_payroll;
select salary,Name from employee_payroll where startdate between CAST('2020-01-01' as Date) and getdate();

