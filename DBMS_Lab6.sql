/*
•Create a database (company)
•Create two tables in the database:
Employee: (employee_no, e_name, Salary, phone, d_no) 
Department: (d_no, d_name, manager_no)
-Note: d_no in Department is primary key
•Retrieve the different e_name from Employee using descending order on Salary
•Drop Salary attribute from Employee
•Retrieve all d_no from the "Employee" and the "Department"? 
•Retrieve d_no that can be found in "Employee" and "Department"? 
•Retrieve all d_no from the "Department"? In different SQL query Retrieve all d_no from the "Employee"? Then use Except between these queries? 
•Rename Employee and Department with the following names: 'E' and 'D' respectively. Then, retrieve the  d_no from the two tables in one SQL statement
*/
CREATE DATABASE company
CREATE TABLE Department(
d_no INT PRIMARY KEY
,d_name VARCHAR(255)
,manager_no INT)
CREATE TABLE Employee(
employee_no INT PRIMARY KEY
,e_name VARCHAR(255)
,Salary MONEY
,phone VARCHAR(10)
,d_no INT FOREIGN KEY REFERENCES Department(d_no))

INSERT INTO Department
VALUES(1, 'CS', 1457)
,(2, 'IS', 1459)
,(3, 'SE', 1444)
,(4, 'CS', 1433)
,(5, 'CS', 1411)
INSERT INTO Employee
VALUES(1456, 'Ahmad', 4000, '0555558888', 1)
,(1457, 'Khaled', 4500, '0555553333', 2)
,(1458, 'Ahmad', 3000, '0555554444', 3)
,(1459, 'Mohamed', 6000, '0555555777', 4)

SELECT DISTINCT e_name, Salary FROM Employee ORDER BY Salary DESC

ALTER TABLE Employee DROP COLUMN Salary

SELECT d_no FROM Employee 
UNION ALL 
SELECT d_no FROM Department

SELECT d_no FROM Employee
INTERSECT 
SELECT d_no FROM Department

SELECT d_no FROM Department

SELECT d_no FROM Employee 
EXCEPT 
SELECT d_no FROM Department

SELECT E.d_no , D.d_no 
FROM Employee As E, Department As D
