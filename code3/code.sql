-- Create the Company Database
CREATE DATABASE Company;
USE Company;

-- Create the employee table with the required columns
CREATE TABLE employee (
    Sr_No INT,
    EmpID INT,
    EMP_Name VARCHAR(50),
    Joining_date DATE,
    emp_position VARCHAR(50),
    Depart_Name VARCHAR(50),
    dep_no INT,
    DOB DATE,
    Age INT,
    Mob_Num VARCHAR(15),
    Address VARCHAR(100),
    Salary DECIMAL(10,2),
    IN_OUT_Time VARCHAR(20)
);

-- INSERT: Adding 10 employee records
INSERT INTO employee VALUES 
(1, 1001, 'Amit Sharma', '2022-01-15', 'Developer', 'IT', 10, '1995-05-12', 29, '9876543210', 'Mumbai', 45000.00, '09:00-18:00'),
(2, 1002, 'Priya Verma', '2021-11-20', 'HR Manager', 'HR', 20, '1993-03-22', 31, '9876543211', 'Pune', 55000.00, '09:30-18:30'),
(3, 1003, 'Rahul Patil', '2023-02-10', 'Analyst', 'Finance', 10, '1996-07-15', 28, '9876543212', 'Mumbai', 40000.00, '09:00-18:00'),
(4, 1004, 'Sneha Joshi', '2020-05-01', 'Manager', 'IT', 15, '1990-01-10', 34, '9876543213', 'Delhi', 75000.00, '10:00-19:00'),
(5, 1005, 'Karan Mehta', '2022-08-18', 'Developer', 'IT', 10, '1997-11-05', 27, '9876543214', 'Pune', 48000.00, '09:00-18:00'),
(6, 1006, 'Pooja Kulkarni', '2021-06-25', 'Tester', 'IT', 15, '1994-09-18', 30, '9876543215', 'Bangalore', 52000.00, '09:30-18:30'),
(7, 1007, 'Vikram Singh', '2023-01-12', 'Accountant', 'Finance', 20, '1992-06-25', 32, '9876543216', 'Mumbai', 42000.00, '09:00-17:00'),
(8, 1008, 'Neha Deshmukh', '2022-09-15', 'Recruiter', 'HR', 20, '1995-12-01', 29, '9876543217', 'Pune', 38000.00, '09:30-18:30'),
(9, 1009, 'Aniket Rane', '2020-10-10', 'Team Lead', 'IT', 10, '1991-02-14', 33, '9876543218', 'Nagpur', 68000.00, '10:00-19:00'),
(10, 1010, 'Divya Nair', '2023-03-05', 'Designer', 'Marketing', 25, '1998-08-30', 26, '9876543219', 'Mumbai', 46000.00, '09:00-18:00');


-- =====================================================
-- 1) Display Name and Address of employees who stay in Mumbai or Pune
-- =====================================================
SELECT EMP_Name, Address 
FROM employee 
WHERE Address IN ('Mumbai', 'Pune');


-- =====================================================
-- 2) Display Name of employees whose salary is less than 50000
-- =====================================================
SELECT EMP_Name, Salary 
FROM employee 
WHERE Salary < 50000;


-- =====================================================
-- 4) Use ALTER and TRUNCATE command
-- =====================================================

-- ALTER: Adds a new column to the table structure
ALTER TABLE employee ADD Status VARCHAR(20);

-- TRUNCATE: Completely deletes all data/rows from the table while keeping the structure intact 
-- (Uncomment the line below to run it)
-- TRUNCATE TABLE employee;


-- =====================================================
-- 5) Display 10 records sorted in ascending order by name
-- =====================================================
SELECT * FROM employee 
ORDER BY EMP_Name ASC;
