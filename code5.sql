-- Create the Company Database (if not already created)
CREATE DATABASE Company;
USE Company;

-- Create the customer table with the required columns
CREATE TABLE customer (
    Sr_No INT,
    Cust_ID INT,
    Cust_Name VARCHAR(50),
    Product_Name VARCHAR(50),
    cost DECIMAL(10,2),
    Purchase_Date DATE,
    Mob_Num VARCHAR(15),
    Address VARCHAR(100),
    Purchase_Time VARCHAR(20),
    Remark VARCHAR(50)
);

-- INSERT: Adding 10 customer records
INSERT INTO customer VALUES 
(1, 501, 'Rahul Sharma', 'Laptop', 45000.00, '2023-10-01', '9876543210', 'Mumbai', '10:30 AM', 'Good'),
(2, 502, 'Priya Verma', 'Mouse', 450.00, '2023-10-02', '9876543211', 'Pune', '11:15 AM', 'Regular'),
(3, 503, 'Amit Patel', 'Keyboard', 750.00, '2023-10-03', '9876543212', 'Nagpur', '01:00 PM', 'Good'),
(4, 504, 'Sneha Joshi', 'Monitor', 12000.00, '2023-10-04', '9876543213', 'Nashik', '02:45 PM', 'Excellent'),
(5, 505, 'Karan Mehta', 'USB Cable', 250.00, '2023-10-05', '9876543214', 'Mumbai', '04:20 PM', 'Average'),
(6, 506, 'Pooja Kulkarni', 'Headphones', 1500.00, '2023-10-06', '9876543215', 'Thane', '09:10 AM', 'Good'),
(7, 507, 'Vikram Singh', 'Pendrive', 600.00, '2023-10-07', '9876543216', 'Pune', '12:30 PM', 'Good'),
(8, 508, 'Neha Deshmukh', 'Webcam', 2500.00, '2023-10-08', '9876543217', 'Aurangabad', '03:00 PM', 'Excellent'),
(9, 509, 'Aniket Rane', 'Printer', 8500.00, '2023-10-09', '9876543218', 'Kolhapur', '05:15 PM', 'Good'),
(10, 510, 'Divya Nair', 'Mousepad', 300.00, '2023-10-10', '9876543219', 'Mumbai', '06:00 PM', 'Regular');


-- =====================================================
-- 1) Display 10 records sorted in ascending order by name
-- =====================================================
SELECT * FROM customer 
ORDER BY Cust_Name ASC;


-- =====================================================
-- 2) Display Name, Cust_ID, and Product_Name columns
-- =====================================================
SELECT Cust_Name, Cust_ID, Product_Name 
FROM customer;


-- =====================================================
-- 3) Add a column for Delivery date
-- =====================================================
ALTER TABLE customer ADD Delivery_Date DATE;


-- =====================================================
-- 5) Display customer name and products with cost > 500
-- =====================================================
SELECT Cust_Name, Product_Name, cost 
FROM customer 
WHERE cost > 500;
