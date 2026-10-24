-- Create Railway Database
CREATE DATABASE RailwayDB;
USE RailwayDB;

CREATE TABLE customer (
    Sr_No INT,
    Name VARCHAR(50),
    ticket_ID INT,
    age INT,
    mob_no VARCHAR(15),
    address VARCHAR(100),
    aadhar_number VARCHAR(30),
    reservation_date DATE,
    destination_name VARCHAR(50),
    seat_number VARCHAR(10),
    Remark VARCHAR(50)
);

INSERT INTO customer VALUES 
(1, 'Amit', 501, 25, '9876543210', 'Mumbai', '[Aadhaar Redacted]', '2026-04-10', 'Delhi', 'S1-12', 'Confirmed'),
(2, 'Priya', 502, 30, '9876543211', 'Pune', '[Aadhaar Redacted]', '2026-04-11', 'Goa', 'B2-24', 'Confirmed'),
(3, 'Rahul', 503, 35, '9876543212', 'Nagpur', '[Aadhaar Redacted]', '2026-04-12', 'Bangalore', 'A1-05', 'RAC'),
(4, 'Sneha', 504, 28, '9876543213', 'Nashik', '[Aadhaar Redacted]', '2026-04-13', 'Chennai', 'S3-45', 'Confirmed'),
(5, 'Karan', 505, 42, '9876543214', 'Mumbai', '[Aadhaar Redacted]', '2026-04-14', 'Delhi', 'S1-14', 'Confirmed'),
(6, 'Pooja', 506, 22, '9876543215', 'Thane', '[Aadhaar Redacted]', '2026-04-15', 'Goa', 'B2-26', 'Waiting'),
(7, 'Vikram', 507, 50, '9876543216', 'Pune', '[Aadhaar Redacted]', '2026-04-16', 'Hyderabad', 'A2-10', 'Confirmed'),
(8, 'Neha', 508, 29, '9876543217', 'Aurangabad', '[Aadhaar Redacted]', '2026-04-17', 'Delhi', 'S2-20', 'Confirmed'),
(9, 'Aniket', 509, 31, '9876543218', 'Kolhapur', '[Aadhaar Redacted]', '2026-04-18', 'Ahmedabad', 'B1-02', 'Confirmed'),
(10, 'Divya', 510, 26, '9876543219', 'Mumbai', '[Aadhaar Redacted]', '2026-04-19', 'Jaipur', 'S4-18', 'Confirmed');


-- =====================================================
-- 1) Perform DML Commands (INSERT, UPDATE, DELETE)
-- =====================================================
UPDATE customer SET destination_name = 'Varanasi' WHERE ticket_ID = 506;
DELETE FROM customer WHERE ticket_ID = 503;


-- =====================================================
-- 2) Display ticket ID, reservation date, and seat number
-- =====================================================
SELECT ticket_ID, reservation_date, seat_number 
FROM customer;
