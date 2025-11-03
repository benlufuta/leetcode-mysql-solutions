-- Problem Link: https://leetcode.com/problems/average-time-of-process-per-machine/description/

USE leetcode;

CREATE TABLE Activity (
    machine_id INT,
    process_id INT,
    activity_type VARCHAR(10),
    timestamp DECIMAL(5, 3)
);

INSERT INTO Activity (machine_id, process_id, activity_type, timestamp) VALUES
(0, 0, 'start', 0.712),
(0, 0, 'end', 1.520),
(0, 1, 'start', 3.140),
(0, 1, 'end', 4.120),
(1, 0, 'start', 0.550),
(1, 0, 'end', 1.550),
(1, 1, 'start', 0.430),
(1, 1, 'end', 1.420),
(2, 0, 'start', 4.100),
(2, 0, 'end', 4.512),
(2, 1, 'start', 2.500),
(2, 1, 'end', 5.000);

# Write your MySQL query statement below
SELECT
    A.machine_id,
    ROUND(AVG(B.timestamp - A.timestamp), 3) AS processing_time
FROM
    Activity A
JOIN
    Activity B ON A.machine_id = B.machine_id
    AND A.process_id = B.process_id
    AND A.activity_type = 'start'
    AND B.activity_type = 'end'
GROUP BY
    A.machine_id;
