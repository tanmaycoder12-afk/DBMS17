-- Create the Company Database
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- Create employee table with required columns
CREATE TABLE employee (
    Sr_No INT,
    EmpID INT,
    EMP_FirstName VARCHAR(50),
    EMP_LastName VARCHAR(50),
    Joining_date DATE,
    emp_position VARCHAR(50),
    Depart_Name VARCHAR(50),
    dep_no INT,
    DOB DATE,
    Age INT,
    Mob_Num VARCHAR(15),
    Address VARCHAR(100),
    sales_earning DECIMAL(10,2),
    salary DECIMAL(10,2)
);

-- Insert 10 records of employee
INSERT INTO employee VALUES 
(1, 101, 'Amit', 'Sharma', '2023-01-15', 'Developer', 'IT', 10, '1998-05-12', 26, '9876543210', 'Mumbai', 60000.00, 45000.00),
(2, 102, 'Priya', 'Verma', '2024-02-20', 'Sales Exec', 'Sales', 20, '1999-03-22', 25, '9876543211', 'Pune', 55000.00, 40000.00),
(3, 103, 'Rahul', 'Patil', '2022-11-10', 'Manager', 'HR', 30, '1995-07-15', 29, '9876543212', 'Nagpur', 70000.00, 65000.00),
(4, 104, 'Sneha', 'Joshi', '2024-03-01', 'Sales Exec', 'Sales', 20, '2000-01-10', 24, '9876543213', 'Nashik', 80000.00, 52000.00),
(5, 105, 'Karan', 'Mehta', '2021-05-18', 'Analyst', 'Finance', 40, '1997-11-05', 27, '9876543214', 'Mumbai', 45000.00, 48000.00),
(6, 106, 'Pooja', 'Kulkarni', '2024-01-05', 'Developer', 'IT', 10, '1996-09-18', 28, '9876543215', 'Thane', 65000.00, 50000.00),
(7, 107, 'Vikram', 'Singh', '2023-08-12', 'Sales Exec', 'Sales', 20, '1994-06-25', 30, '9876543216', 'Pune', 52000.00, 42000.00),
(8, 108, 'Neha', 'Deshmukh', '2020-12-01', 'HR Lead', 'HR', 30, '1993-12-01', 31, '9876543217', 'Aurangabad', 90000.00, 75000.00),
(9, 109, 'Aniket', 'Rane', '2024-04-10', 'Developer', 'IT', 10, '2001-02-14', 23, '9876543218', 'Kolhapur', 40000.00, 38000.00),
(10, 110, 'Divya', 'Nair', '2022-09-05', 'Designer', 'Marketing', 50, '1998-08-30', 26, '9876543219', 'Mumbai', 50000.00, 46000.00);


-- =====================================================
-- 1) Display all columns from the employees table
-- =====================================================
SELECT * FROM employee;


-- =====================================================
-- 2) Retrieve the first name, last name, and salary of all employees
-- =====================================================
SELECT EMP_FirstName, EMP_LastName, salary 
FROM employee;


-- =====================================================
-- 3) Find all employees in 'Sales' earning > 50,000
-- =====================================================
SELECT EMP_FirstName, EMP_LastName, Depart_Name, salary 
FROM employee 
WHERE Depart_Name = 'Sales' AND salary > 50000;


-- =====================================================
-- 6) Calculate the average salary across the company
-- =====================================================
SELECT AVG(salary) AS Average_Salary 
FROM employee;
