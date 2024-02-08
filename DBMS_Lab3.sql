/*
Create a database (company_lab3)
Create two tables in the database:
Employee: (e_name, employee_no, Salary, e_gender)
Department: (d_No, d_name, manager)
In Employee table: 
•Salary should be > 1500 
•employee_no should be unique 
•Default value for the gender is female
In Department table: 
•d_No  doesn't accept null value
-Fill each table with 3 records 
-Drop the constraint of default value in Employee table
-Delete the male employee in Employee table
*/
CREATE DATABASE company_lab3;
CREATE TABLE Employee(
e_name VARCHAR(255)
,employee_no INT UNIQUE
,Salary MONEY CHECK (Salary > 1500)
,e_gender VARCHAR(10));
CREATE TABLE Department(
d_No INT NOT NULL
,d_name VARCHAR(255)
,manager VARCHAR(255));

INSERT INTO Employee(e_name, employee_no, Salary, e_gender)
VALUES ('Huda', 1, 6000, 'female')
,('Sara', 2, 8000, 'female')
,('Ahmed', 3, 7000, 'male');
INSERT INTO Department(d_No, d_name, manager)
VALUES (1, 'Finance', 'Sara')
,(2, 'HR', 'Huda')
,(3, 'Marketing', 'Ahmed');

ALTER TABLE Employee ADD CONSTRAINT gender DEFAULT 'female' FOR e_gender
ALTER TABLE Employee DROP CONSTRAINT gender
DELETE FROM Employee WHERE e_gender = 'male'

SELECT * FROM Employee
SELECT * FROM Department 



