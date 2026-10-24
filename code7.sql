-- Create the Student Database
CREATE DATABASE Student;
USE Student;

-- Create Exam Table for Course 1
CREATE TABLE exam_course1 (
    Sr_No INT,
    stud_enrollmentID INT,
    stud_name VARCHAR(50),
    sub_name VARCHAR(50),
    sub_marks INT,
    percentage DECIMAL(5,2),
    Result VARCHAR(20)
);

-- Create Exam Table for Course 2
CREATE TABLE exam_course2 (
    Sr_No INT,
    stud_enrollmentID INT,
    stud_name VARCHAR(50),
    sub_name VARCHAR(50),
    sub_marks INT,
    percentage DECIMAL(5,2),
    Result VARCHAR(20)
);

-- INSERT: Adding 10 records into exam_course1
INSERT INTO exam_course1 VALUES 
(1, 101, 'Amit Sharma', 'Math', 45, 45.00, 'Pass'),
(2, 102, 'Priya Verma', 'Math', 32, 32.00, 'Fail'),
(3, 103, 'Ankit Roy', 'Math', 78, 78.00, 'Pass'),
(4, 104, 'Sneha Joshi', 'Math', 25, 25.00, 'Fail'),
(5, 105, 'Karan Mehta', 'Math', 88, 88.00, 'Pass'),
(6, 106, 'Pooja Kulkarni', 'Math', 60, 60.00, 'Pass'),
(7, 107, 'Vikram Singh', 'Math', 40, 40.00, 'Pass'),
(8, 108, 'Neha Deshmukh', 'Math', 92, 92.00, 'Pass'),
(9, 109, 'Aniket Rane', 'Math', 55, 55.00, 'Pass'),
(10, 110, 'Divya Nair', 'Math', 20, 20.00, 'Fail');

-- INSERT: Adding records into exam_course2 (for join queries)
INSERT INTO exam_course2 VALUES 
(1, 101, 'Amit Sharma', 'Physics', 65, 65.00, 'Pass'),
(2, 102, 'Priya Verma', 'Physics', 50, 50.00, 'Pass'),
(3, 103, 'Ankit Roy', 'Physics', 82, 82.00, 'Pass'),
(4, 104, 'Sneha Joshi', 'Physics', 45, 45.00, 'Pass'),
(5, 111, 'Rohan Gupta', 'Physics', 70, 70.00, 'Pass');


-- =====================================================
-- 1) Display name of student who got minimum marks
-- =====================================================
SELECT stud_name, sub_marks 
FROM exam_course1 
ORDER BY sub_marks ASC 
LIMIT 1;


-- =====================================================
-- 3) Display average marks of students
-- =====================================================
SELECT AVG(sub_marks) AS Average_Marks 
FROM exam_course1;


-- =====================================================
-- 4) Display names of students whose name starts with ‘A’ arranged in ascending order of sub marks
-- =====================================================
SELECT stud_name, sub_marks 
FROM exam_course1 
WHERE stud_name LIKE 'A%' 
ORDER BY sub_marks ASC;


-- =====================================================
-- 6) Display stud_enrollmentID, name, Result using left join
-- =====================================================
SELECT e1.stud_enrollmentID, e1.stud_name, e1.Result 
FROM exam_course1 e1 
LEFT JOIN exam_course2 e2 ON e1.stud_enrollmentID = e2.stud_enrollmentID;
