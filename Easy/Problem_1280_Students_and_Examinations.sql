-- Problem Link: https://leetcode.com/problems/students-and-examinations/description

USE leetcode;

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE Subjects (
    subject_name VARCHAR(50) PRIMARY KEY
);

CREATE TABLE Examinations (
    student_id INT,
    subject_name VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_name) REFERENCES Subjects(subject_name)
);

INSERT INTO Students (student_id, student_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(13, 'John'),
(6, 'Alex');

INSERT INTO Subjects (subject_name) VALUES
('Math'),
('Physics'),
('Programming');

INSERT INTO Examinations (student_id, subject_name) VALUES
(1, 'Math'),
(1, 'Physics'),
(1, 'Programming'),
(2, 'Programming'),
(1, 'Physics'),
(1, 'Math'),
(13, 'Math'),
(13, 'Programming'),
(13, 'Physics'),
(2, 'Math'),
(1, 'Math');

SELECT S.student_id, S.student_name, Sub.subject_name, COALESCE(COUNT(E.subject_name), 0) AS attended_exams
FROM students AS S
CROSS JOIN subjects AS Sub
LEFT JOIN examinations AS E ON E.student_id = S.student_id AND E.subject_name = Sub.subject_name
GROUP BY S.student_id, S.student_name, Sub.subject_name ORDER BY S.student_id;
