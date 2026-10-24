-- Create Hospital Database
CREATE DATABASE HospitalDB;
USE HospitalDB;

CREATE TABLE patient (
    Sr_No INT,
    patientID INT,
    patient_name VARCHAR(50),
    patient_disease VARCHAR(50),
    doctor_name VARCHAR(50),
    age INT,
    consultation_datetime DATETIME,
    consultation_fees DECIMAL(10,2),
    payment_details VARCHAR(50),
    mob_num VARCHAR(15),
    address VARCHAR(100),
    Remark VARCHAR(50)
);

INSERT INTO patient VALUES 
(1, 201, 'Amit Shah', 'Fever', 'Dr. Rao', 45, '2026-03-01 10:30:00', 500.00, 'Online', '9876543210', 'Mumbai', 'Stable'),
(2, 202, 'Priya Nair', 'Cold', 'Dr. Mehta', 30, '2026-03-01 11:00:00', 400.00, 'Cash', '9876543211', 'Pune', 'Recovering'),
(3, 203, 'Rahul Sen', 'Diabetes', 'Dr. Rao', 55, '2026-03-02 09:15:00', 600.00, 'Card', '9876543212', 'Nagpur', 'Under Observation'),
(4, 204, 'Sneha Roy', 'Injury', 'Dr. Joshi', 25, '2026-03-02 12:00:00', 800.00, 'Online', '9876543213', 'Nashik', 'Discharged'),
(5, 205, 'Karan Patel', 'BP', 'Dr. Mehta', 60, '2026-03-03 14:30:00', 500.00, 'Cash', '9876543214', 'Mumbai', 'Stable'),
(6, 206, 'Pooja Iyer', 'Fever', 'Dr. Rao', 28, '2026-03-03 15:10:00', 500.00, 'Card', '9876543215', 'Thane', 'Recovering'),
(7, 207, 'Vikram Das', 'Asthma', 'Dr. Joshi', 50, '2026-03-04 10:00:00', 700.00, 'Online', '9876543216', 'Pune', 'Stable'),
(8, 208, 'Neha Kulkarni', 'Cold', 'Dr. Mehta', 35, '2026-03-04 11:30:00', 400.00, 'Cash', '9876543217', 'Aurangabad', 'Recovering'),
(9, 209, 'Aniket More', 'Injury', 'Dr. Joshi', 22, '2026-03-05 09:00:00', 800.00, 'Card', '9876543218', 'Kolhapur', 'Discharged'),
(10, 210, 'Divya Joshi', 'Fever', 'Dr. Rao', 40, '2026-03-05 16:00:00', 500.00, 'Online', '9876543219', 'Mumbai', 'Stable');


-- =====================================================
-- 1) Perform DDL Command (e.g., ALTER TABLE)
-- =====================================================
ALTER TABLE patient ADD Email VARCHAR(100);
ALTER TABLE patient DROP COLUMN Email;


-- =====================================================
-- 2) Display patientID and consultation date/time in ascending order
-- =====================================================
SELECT patientID, consultation_datetime 
FROM patient 
ORDER BY consultation_datetime ASC;
