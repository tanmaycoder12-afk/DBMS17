-- Create the Library Database
CREATE DATABASE Library;
USE Library;

-- Create Library Student Table for Course 1
CREATE TABLE library_course1 (
    Sr_No INT,
    stud_enrollmentID INT,
    sud_name VARCHAR(50),
    sub_name VARCHAR(50),
    STD VARCHAR(10),
    mon_no VARCHAR(15),
    address VARCHAR(100),
    Issue_date DATE,
    return_date DATE,
    latemark_fee DECIMAL(10,2)
);

-- Create Library Student Table for Course 2
CREATE TABLE library_course2 (
    Sr_No INT,
    stud_enrollmentID INT,
    sud_name VARCHAR(50),
    sub_name VARCHAR(50),
    STD VARCHAR(10),
    mon_no VARCHAR(15),
    address VARCHAR(100),
    Issue_date DATE,
    return_date DATE,
    latemark_fee DECIMAL(10,2)
);

-- INSERT: Adding 7 records into library_course1
INSERT INTO library_course1 VALUES 
(1, 301, 'Amit Sharma', 'Data Structures', '2nd Year', '9876543210', 'Mumbai', '2023-10-01', '2023-10-10', 50.00),
(2, 302, 'Priya Verma', 'Database', '2nd Year', '9876543211', 'Pune', '2023-10-02', '2023-10-12', 100.00),
(3, 303, 'Rahul Patil', 'Operating System', '3rd Year', '9876543212', 'Nagpur', '2023-10-03', '2023-10-03', 0.00),
(4, 304, 'Sneha Joshi', 'Networks', '3rd Year', '9876543213', 'Nashik', '2023-10-04', '2023-10-14', 150.00),
(5, 305, 'Karan Mehta', 'Data Structures', '2nd Year', '9876543214', 'Mumbai', '2023-10-05', '2023-10-05', 0.00),
(6, 306, 'Pooja Kulkarni', 'Database', '2nd Year', '9876543215', 'Thane', '2023-10-06', '2023-10-15', 50.00),
(7, 307, 'Vikram Singh', 'Operating System', '3rd Year', '9876543216', 'Pune', '2023-10-07', '2023-10-18', 200.00);

-- INSERT: Adding 7 records into library_course2
INSERT INTO library_course2 VALUES 
(1, 301, 'Amit Sharma', 'Java Programming', '2nd Year', '9876543210', 'Mumbai', '2023-10-01', '2023-10-11', 50.00),
(2, 308, 'Neha Deshmukh', 'Python', '1st Year', '9876543217', 'Aurangabad', '2023-10-02', '2023-10-02', 0.00),
(3, 303, 'Rahul Patil', 'C++', '3rd Year', '9876543212', 'Nagpur', '2023-10-03', '2023-10-13', 100.00),
(4, 309, 'Aniket Rane', 'Python', '1st Year', '9876543218', 'Kolhapur', '2023-10-04', '2023-10-04', 0.00),
(5, 305, 'Karan Mehta', 'Java Programming', '2nd Year', '9876543214', 'Mumbai', '2023-10-05', '2023-10-12', 75.00),
(6, 310, 'Divya Nair', 'Web Tech', '1st Year', '9876543219', 'Mumbai', '2023-10-06', '2023-10-06', 0.00),
(7, 307, 'Vikram Singh', 'C++', '3rd Year', '9876543216', 'Pune', '2023-10-07', '2023-10-15', 120.00);


-- =====================================================
-- 1) Display name of student and late mark fees
-- =====================================================
SELECT sud_name, latemark_fee 
FROM library_course1;


-- =====================================================
-- 2) Display using inner join: student name, sub_name, late mark fees
-- =====================================================
SELECT c1.sud_name, c1.sub_name, c1.latemark_fee 
FROM library_course1 c1
INNER JOIN library_course2 c2 ON c1.stud_enrollmentID = c2.stud_enrollmentID;


-- =====================================================
-- 3) Add remark column
-- =====================================================
ALTER TABLE library_course1 ADD Remark VARCHAR(50);


-- =====================================================
-- 4) Display names arranging them in ascending order
-- =====================================================
SELECT sud_name 
FROM library_course1 
ORDER BY sud_name ASC;
