/*
•Create a database (company)
•Create two tables in the database:
Employee: (employee_no, e_name, Salary, phone, d_no) 
Department: (d_no, d_name, manager_no)
-Note: d_no in Department is primary key
•Retrieve all the attribute values from each table
•Display sum of salaries for each department where the sum of salaries more than 6000
•Retrieve the details of employees whose salary is greater than the minimum salary of the employees working in dept number 2 and also he is not working in dept number 2
•Display the average salary of employees for each department where their average more than 3000
•Write a query that will display the employee name, dno, salary for employees whose work in a department !=4 and salary more of all employee average salary whose works in dno=4
*/
CREATE DATABASE company22
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
,(1460, 'Noor', 5000, '0555553334', 2)

SELECT * FROM Department
SELECT * FROM Employee

SELECT d_no, SUM(Salary) AS 'total_salary'
FROM Employee
GROUP BY d_no
HAVING SUM(Salary) > 6000

SELECT e.* 
FROM Employee e
WHERE e.Salary > (SELECT MIN(Salary) FROM Employee WHERE d_no = 2) AND e.d_no != 2

SELECT d_no, AVG(Salary) AS 'average_salary'
FROM Employee
GROUP BY d_no
HAVING AVG(Salary) > 3000

SELECT e.e_name, e.d_no, e.Salary
FROM Employee e
WHERE e.d_no != 4 AND e.Salary > (SELECT AVG(Salary) FROM Employee WHERE d_no = 4)
