-- Problem Link: https://leetcode.com/problems/swap-salary/description/

USE leetcode;

CREATE TABLE Salary (
    id INT PRIMARY KEY,
    name VARCHAR(10),
    sex CHAR(1),
    salary INT
);

INSERT INTO Salary (id, name, sex, salary) VALUES
(1, 'A', 'm', 2500),
(2, 'B', 'f', 1500),
(3, 'C', 'm', 5500),
(4, 'D', 'f', 500);

-- First approach
UPDATE salary
SET sex = IF(sex = 'm', 'f', 'm')
WHERE id IS NOT NULL;

-- OR

-- Second Approach
UPDATE salary
SET sex = CASE
    WHEN sex = 'm' THEN 'f'
    WHEN sex = 'f' THEN 'm'
END;

SELECT * FROM salary;