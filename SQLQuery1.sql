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
INSERT INTO Employee_Payroll (Name, Salary, StartDate, Gender)
 VALUES ('Seeta', 44558.55, CAST('2013-05-07' as Date), 'F'),
		 ('Geeta', 33228.66, CAST('2016-08-05' as Date), 'F');
INSERT INTO Employee_Payroll (Name, Salary, StartDate) VALUES ('Rehan', 25688.88, CAST('2001-02-02' as Date));
INSERT INTO Employee_Payroll (Name, Salary, StartDate) VALUES ('Kajol', 284965.55, CAST('2008-05-07' as Date));
INSERT INTO Employee_Payroll (Name, StartDate) VALUES ('Dhoni', getdate());
----------UC4 Select-Read(R)------------
select * from Employee_Payroll;
----------UC5 Retrieve Salary Data For A Particular Employee----------
select salary from employee_payroll where Name= 'Salman';
select salary,Name from employee_payroll where startdate between CAST('2020-01-01' as Date) and getdate();
----------UC6 Add Gender To Employee Payroll Table And Updated Row--------

ALTER TABLE Employee_Payroll ADD Gender varchar(2);

update employee_payroll set DepDummy = 'Finance' WHERE Id in(1,2,7,8,9,10,11);
update employee_payroll set Gender = 'F' WHERE Id IN (9,10,11);
----------UC7 Find Sum Avg Min Max And Number of Male Or Female employees----
select sum(Salary) as TotalSalary,Gender from employee_payroll group by Gender;
select avg(Salary) as avgSalary,Gender from employee_payroll group by Gender;
select Min(Salary) as MinSalary,Gender from employee_payroll group by Gender;
select Max(Salary) as MaxSalary,Gender from employee_payroll group by Gender;
select Count(Gender) as NoOfEmployees,Gender from employee_payroll group by Gender;
select * from Employee_Payroll;
----------UC8 Store Employee Informatin Like Phone,Address And Departments----
ALTER TABLE Employee_Payroll ADD Phone bigint;
ALTER TABLE Employee_Payroll ADD Address varchar(300) not null default 'Patna';
ALTER TABLE Employee_Payroll ADD Department varchar(300) not null default 'IT';
Exec sp_rename 'Employee_Payroll.Department','DepDummy','COLUMN';
----------UC9 Extend employee_payroll table to have basic pay-----------------
Exec sp_rename 'Employee_Payroll.Salary','BasicPay','COLUMN';
ALTER TABLE Employee_Payroll ADD Deductions float,TaxablePay float,IncomeTax float,NetPay float;
