-- Problem Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/

USE leetcode;

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE EmployeeUNI (
    id INT PRIMARY KEY,
    unique_id INT
);

INSERT INTO Employees (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

INSERT INTO EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);

SELECT unique_id, name FROM Employees AS Emp 
LEFT JOIN EmployeeUNI AS EmpUNI 
ON Emp.id = EmpUNI.id;