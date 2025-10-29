-- Problem Link: https://leetcode.com/problems/invalid-tweets/description/

USE leetcode;

CREATE TABLE Tweets (
    tweet_id INT PRIMARY KEY,
    content VARCHAR(280)
);

INSERT INTO Tweets (tweet_id, content) VALUES
(1, 'Let us Code'),
(2, 'More than fifteen chars are here!');

SELECT tweet_id FROM Tweets 
WHERE LENGTH(content) > 15;