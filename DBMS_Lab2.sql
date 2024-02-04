/*
Create "lab2_co" database.
Create "Student" Table with the following attributes:
• Student_NO ,unique
• Student_Name ,no null
• Student_Address
Adding "Student gender" Attribute to the table.
Changing the data type of "Student_Address" Attribute to be char(100)
Set "Student_gender" default value ='f'.
*/
CREATE DATABASE lab2_co;
CREATE TABLE Student(
Student_NO INT UNIQUE
,Student_Name VARCHAR(255) NOT NULL
,Student_Address VARCHAR(100));

ALTER TABLE Student
ADD Student_gender CHAR(1);
ALTER TABLE Student
ALTER COLUMN Student_Address CHAR(100);
ALTER TABLE Student
ADD CONSTRAINT DF_Student_gender DEFAULT 'f' FOR Student_gender;
