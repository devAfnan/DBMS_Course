/*
•Create a database (company_lab4_2024)
•Create two tables in the database:
Employee: (employee_no, e_name, Salary, phone) 
department: (d_no, d_name, manager_no)
-Note: employee_no  and d_no primary key
•Retrieve all the attribute values from each table.
•Select all records from Employee table using ascending order on Salary
•Retrieve employee_no and Salary where their employee name is 'Ahmad'
*/
CREATE DATABASE company_lab4_2024
CREATE TABLE Employee(
employee_no INT NOT NULL PRIMARY KEY
,e_name VARCHAR(255)
,Salary MONEY
,phone VARCHAR(10))
CREATE TABLE department(
d_no INT NOT NULL PRIMARY KEY
,d_name VARCHAR(255)
,manager_no INT)

INSERT INTO Employee
VALUES(1456, 'Ahmed', 4000, '0555558888')
,(1457, 'Khaled', 4500, '0555553333')
,(1458, 'Ahmed', 3000, '0555554444')
,(1459, 'Mohamed', 6000, '0555555777')
INSERT INTO department
VALUES(1, 'CS', 1457)
,(2, 'IS', 1459)

SELECT * FROM Employee
SELECT * FROM department

SELECT * FROM Employee ORDER BY Salary ASC

SELECT employee_no, Salary FROM Employee WHERE e_name = 'Ahmed'
