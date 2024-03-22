/*
•Create a database (lab7_2024)
•Create one table in the database:
Std_grades: (ID, First_name, Last_name, mark)
•Display the student information who's mark > the average
•Count the number of student and name it Count
•Create a view that display the student ID if they get A+ and display it 
•Display the first and last name for student that had the minimum mark
*/
CREATE DATABASE lab7_2024
CREATE TABLE Std_grades(
ID INT PRIMARY KEY
,First_name VARCHAR(50)
,Last_name VARCHAR(50)
,mark INT)

INSERT INTO Std_grades
VALUES(0615, 'Amera', 'majed', 98)
,(0513, 'Wafa', 'ahmad', 56)
,(0713, 'Abeer', 'salem', 96)
,(0533, 'ohood', 'ahmad', 86)

SELECT * FROM Std_grades WHERE mark > (SELECT AVG(mark) FROM Std_grades)

SELECT COUNT(*) AS 'Count' FROM Std_grades

CREATE VIEW View1 AS SELECT ID FROM Std_grades WHERE mark >= 95

SELECT * FROM View1 

SELECT First_name, Last_name FROM Std_grades WHERE mark = (SELECT MIN(mark) FROM Std_grades)
