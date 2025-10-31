-- Problem Link: https://leetcode.com/problems/rising-temperature/description

USE leetcode;

CREATE TABLE Weather (
    id INT PRIMARY KEY,
    recordDate DATE,
    temperature INT
);

INSERT INTO Weather (id, recordDate, temperature) VALUES
(1, '2015-01-01', 10),
(2, '2015-01-02', 25),
(3, '2015-01-03', 20),
(4, '2015-01-04', 30);

SELECT Temp2.id 
FROM weather AS Temp1 
JOIN weather AS Temp2 
-- Join the weather table to itself with two aliases to compare rows day by day

WHERE 
-- Filter pairs where the date difference between Temp2 and Temp1 is exactly 1 day 
DATEDIFF(Temp2.recordDate, Temp1.recordDate) = 1 
-- Ensure the temperature on the later day (Temp2) is greater than the earlier day (Temp1)
AND Temp2.temperature > Temp1.temperature;



