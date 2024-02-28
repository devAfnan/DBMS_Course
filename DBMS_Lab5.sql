/*
•Create a database (company_lab5)
•Create one table in the database:
Employee: (employee_no, e_name, Salary, phone) 
•Select all records from Employee table which their name is 'Ahamd' and their salary is 4000
•Show the resulting of Adding 2000 for salary to all employees their name is end with 'd'
•Retrieve employee no and name where employee name contain 'ma'
•Retrieve all information for employees between 'Khaled' and 'Mohamed' and haven't phone number
*/
CREATE DATABASE company_lab5
CREATE TABLE Employee(
employee_no INT NOT NULL PRIMARY KEY
,e_name VARCHAR(255)
,Salary MONEY
,phone VARCHAR(10))

INSERT INTO Employee
VALUES(1456, 'Ahmad', 4000, '0555558888')
,(1457, 'Khaled', 4500, null)
,(1458, 'Ahmad', 3000, '0555553333')
,(1459, 'Mohamed', 6000, '0555555777')

SELECT * FROM Employee WHERE (e_name = 'Ahmad' AND Salary = 4000)
SELECT employee_no, e_name, (Salary + 2000), phone FROM Employee WHERE e_name LIKE '%d' 
SELECT employee_no, e_name FROM Employee WHERE e_name LIKE '%ma%' 
SELECT * FROM Employee WHERE (e_name between 'Khaled' AND 'Mohamed') AND phone IS NULL 