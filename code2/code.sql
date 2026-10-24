-- Create the College Database
CREATE DATABASE College;
USE College;

-- Create the student table with the required columns
CREATE TABLE student (
    Sr_No INT,
    Roll_No INT,
    Stud_Name VARCHAR(50),
    DOB DATE,
    Age INT,
    Mob_Num VARCHAR(15),
    Address VARCHAR(100),
    Branch_Name VARCHAR(50),
    Year VARCHAR(10),
    Fees DECIMAL(10,2),
    Remark VARCHAR(50)
);


-- =====================================================
-- 1) Perform Alter, Insert, Drop, and Rename commands
-- =====================================================

-- INSERT: Adding 10 student records
INSERT INTO student VALUES 
(1, 201, 'John Doe', '2004-02-10', 20, '9123456780', 'New York', 'Computer Science', '2nd Year', 12000.00, 'Good'),
(2, 202, 'Jane Smith', '2005-04-15', 19, '9123456781', 'Chicago', 'Information Tech', '1st Year', 0.00, 'Excellent'),
(3, 203, 'Robert Johnson', '2003-09-20', 21, '9123456782', 'Boston', 'Mechanical', '3rd Year', 5000.00, 'Average'),
(4, 204, 'Emily Davis', '2004-12-05', 20, '9123456783', 'Seattle', 'Civil', '2nd Year', 2500.00, 'Good'),
(5, 205, 'Michael Brown', '2002-06-18', 22, '9123456784', 'Austin', 'Electronics', '4th Year', 0.00, 'Outstanding'),
(6, 206, 'Sarah Wilson', '2005-01-25', 19, '9123456785', 'Miami', 'Computer Science', '1st Year', 8000.00, 'Good'),
(7, 207, 'David Miller', '2003-08-11', 21, '9123456786', 'Denver', 'Mechanical', '3rd Year', 1500.00, 'Needs Improvement'),
(8, 208, 'Laura Taylor', '2004-03-30', 20, '9123456787', 'Dallas', 'Information Tech', '2nd Year', 0.00, 'Good'),
(9, 209, 'James Anderson', '2002-10-14', 22, '9123456788', 'Phoenix', 'Civil', '4th Year', 4000.00, 'Average'),
(10, 210, 'Linda Thomas', '2005-07-09', 19, '9123456789', 'Atlanta', 'Electronics', '1st Year', 3000.00, 'Good');

-- ALTER: Adding a temporary column 'Email' to the table
ALTER TABLE student ADD Email VARCHAR(100);

-- DROP: Dropping the 'Email' column from the table
ALTER TABLE student DROP COLUMN Email;

-- RENAME: Renaming the table from 'student' to 'college_student'
RENAME TABLE student TO college_student;

-- (Optional) Rename it back to 'student' so subsequent queries work smoothly
RENAME TABLE college_student TO student;


-- =====================================================
-- 2) Display student name and pending fees
-- =====================================================
SELECT Stud_Name, Fees AS Pending_Fees 
FROM student;
