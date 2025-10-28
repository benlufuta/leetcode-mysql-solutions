-- Problem Link: https://leetcode.com/problems/employee-bonus/description/

USE leetcode;

CREATE TABLE Employee (
    empId INT PRIMARY KEY,
    name VARCHAR(50),
    supervisor INT,
    salary INT
);

CREATE TABLE Bonus (
    empId INT PRIMARY KEY,
    bonus INT
);

INSERT INTO Employee (empId, name, supervisor, salary) VALUES
(3, 'Brad', NULL, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4, 'Thomas', 3, 4000);

INSERT INTO Bonus (empId, bonus) VALUES
(2, 500),
(4, 2000);

SELECT E.name, B.bonus FROM Employee AS E
LEFT JOIN Bonus AS B ON E.empId = B.empId 
WHERE B.bonus < 1000 OR B.bonus IS NULL 
ORDER BY B.bonus;

