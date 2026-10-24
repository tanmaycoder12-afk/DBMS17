-- Create the School Database
CREATE DATABASE School;
USE School;

-- Create the student table with the required columns
CREATE TABLE student (
    Sr_No INT,
    Roll_No INT,
    Stud_Name VARCHAR(50),
    DOB DATE,
    Age INT,
    Mob_Num VARCHAR(15),
    Address VARCHAR(100),
    STD VARCHAR(10),
    Fees DECIMAL(10,2),
    Remark VARCHAR(50)
);


-- =====================================================
-- 1) Perform Insert, Update, and Delete command
-- =====================================================

-- INSERT: Adding 10 student records
INSERT INTO student VALUES 
(1, 101, 'Alice Smith', '2010-05-12', 14, '9876543210', 'New York', '9th', 5000.00, 'Good'),
(2, 102, 'Bob Jones', '2011-03-22', 13, '9876543211', 'Chicago', '8th', 4500.00, 'Average'),
(3, 103, 'Charlie Brown', '2010-07-15', 14, '9876543212', 'Boston', '9th', 0.00, 'Excellent'),
(4, 104, 'Diana Prince', '2009-01-10', 15, '9876543213', 'Seattle', '10th', 2000.00, 'Good'),
(5, 105, 'Ethan Hunt', '2011-11-05', 13, '9876543214', 'Austin', '8th', 1500.00, 'Need Improvement'),
(6, 106, 'Fiona Glenanne', '2010-09-18', 14, '9876543215', 'Miami', '9th', 0.00, 'Good'),
(7, 107, 'George Clark', '2009-06-25', 15, '9876543216', 'Denver', '10th', 3000.00, 'Average'),
(8, 108, 'Hannah Abbott', '2011-12-01', 13, '9876543217', 'Dallas', '8th', 4000.00, 'Good'),
(9, 109, 'Ian Malcolm', '2010-02-14', 14, '9876543218', 'Phoenix', '9th', 0.00, 'Excellent'),
(10, 110, 'Julia Roberts', '2009-08-30', 15, '9876543219', 'Atlanta', '10th', 1000.00, 'Good');

-- UPDATE: Changing fees and remark for a specific student (Roll No 101)
UPDATE student 
SET Fees = 0.00, Remark = 'Paid Full' 
WHERE Roll_No = 101;

-- DELETE: Removing a student record by Roll No (Roll No 105)
DELETE FROM student 
WHERE Roll_No = 105;


-- =====================================================
-- 2) Display records sorted in ascending order by name
-- =====================================================
SELECT * FROM student 
ORDER BY Stud_Name ASC;


-- =====================================================
-- 3) Display student name and pending fees
-- =====================================================
SELECT Stud_Name, Fees AS Pending_Fees 
FROM student;
