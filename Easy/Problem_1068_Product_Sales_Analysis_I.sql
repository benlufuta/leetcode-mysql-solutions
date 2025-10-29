-- Problem Link: https://leetcode.com/problems/product-sales-analysis-i/description/

USE leetcode;

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    year INT,
    quantity INT,
    price INT
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

INSERT INTO Sales (sale_id, product_id, year, quantity, price) VALUES
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 9000);

INSERT INTO Product (product_id, product_name) VALUES
(100, 'Nokia'),
(200, 'Apple'),
(300, 'Samsung');

SELECT  product_name, year, price
FROM Sales AS S INNER JOIN Product AS P 
ON S.product_id = P.product_id 
ORDER BY year;