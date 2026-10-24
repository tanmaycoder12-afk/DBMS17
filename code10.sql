-- Create College Database & Table
CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE college_student (
    Sr_No INT,
    Roll_No INT,
    Stud_Name VARCHAR(50),
    Branch VARCHAR(50),
    Fees DECIMAL(10,2)
);

INSERT INTO college_student VALUES 
(1, 1, 'Amit', 'CS', 12000), (2, 2, 'Priya', 'IT', 15000),
(3, 3, 'Rahul', 'EXTC', 10000), (4, 4, 'Sneha', 'CS', 12000),
(5, 5, 'Karan', 'Mechanical', 11000), (6, 6, 'Pooja', 'IT', 15000),
(7, 7, 'Vikram', 'Civil', 9000), (8, 8, 'Neha', 'CS', 12000),
(9, 9, 'Aniket', 'EXTC', 10000), (10, 10, 'Divya', 'IT', 15000);


-- =====================================================
-- 1) Create, Use, and Drop a View
-- =====================================================

-- Create a view for CS students
CREATE VIEW cs_students AS 
SELECT Roll_No, Stud_Name, Branch, Fees 
FROM college_student 
WHERE Branch = 'CS';

-- Insert record through View
INSERT INTO cs_students VALUES (11, 'Rohan', 'CS', 12000);

-- Update/Modify record through View
UPDATE cs_students 
SET Fees = 13000 
WHERE Roll_No = 1;

-- Delete record through View
DELETE FROM cs_students 
WHERE Roll_No = 11;

-- Drop the View
DROP VIEW cs_students;
