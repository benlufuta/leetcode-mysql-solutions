-- Problem Link: https://leetcode.com/problems/employees-with-missing-information/description

CREATE database LeetCode;

USE LeetCode;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(20)
);

INSERT INTO Employees (employee_id, name) VALUES
(9, 'Raina'),
(6, 'Amayah'),
(10, 'Maliah'),
(7, 'Lina'),
(4, 'Kian'),
(8, 'Arturo');


CREATE TABLE Salaries (
    employee_id INT PRIMARY KEY,
    salary INT
);

INSERT INTO Salaries (employee_id, salary) VALUES
(6, 33019),
(2, 58725),
(1, 31187),
(15, 18943),
(9, 23196),
(8, 94806);

SELECT S.employee_id FROM Employees AS E
RIGHT JOIN  Salaries AS S ON E.employee_id = S.employee_id
WHERE E.name IS NULL

UNION

SELECT E.employee_id FROM Employees AS E
LEFT JOIN  Salaries AS S ON E.employee_id = S.employee_id
WHERE S.salary IS NULL

ORDER BY employee_id;