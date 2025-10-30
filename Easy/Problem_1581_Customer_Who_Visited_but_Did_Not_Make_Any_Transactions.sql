-- Problem Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

USE leetcode;

CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    customer_id INT
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    visit_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (visit_id) REFERENCES Visits(visit_id)
);

INSERT INTO Visits (visit_id, customer_id) VALUES
(1, 23),
(2, 9),
(4, 30),
(5, 54),
(6, 96),
(7, 54),
(8, 54);

INSERT INTO Transactions (transaction_id, visit_id, amount) VALUES
(2, 5, 310),
(3, 5, 300),
(9, 5, 200),
(12, 1, 910),
(13, 2, 970);

SELECT customer_id, COUNT(customer_id) AS count_no_trans 
FROM Visits AS V LEFT JOIN Transactions AS T 
ON V.visit_id = T.visit_id 
WHERE T.transaction_id IS NULL 
GROUP BY customer_id 
ORDER BY count_no_trans DESC;