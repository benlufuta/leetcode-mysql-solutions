-- Problem Link: https://leetcode.com/problems/delete-duplicate-emails/description

USE leetcode;

CREATE TABLE person (
    id INT PRIMARY KEY,
    email VARCHAR(255)
);

INSERT INTO person (id, email) VALUES
(1, 'john@example.com'),
(2, 'bob@example.com'),
(3, 'john@example.com');

-- Make a self join, compare and delete duplicate values
DELETE dup1 FROM person dup1, person dup2
WHERE dup1.id > dup2.id AND dup1.email = dup2.email;

