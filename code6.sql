-- =====================================================
-- 1) TCL (Transaction Control Language) Commands Example
-- =====================================================

-- TCL commands are used to manage transactions in a database, ensuring data integrity.
-- The main commands are COMMIT, ROLLBACK, and SAVEPOINT.

-- Start a new transaction
START TRANSACTION;

-- Perform an update operation on the customer table
UPDATE customer 
SET cost = cost + 100 
WHERE Cust_ID = 501;

-- Create a savepoint to mark a point in the transaction
SAVEPOINT sp1;

-- Perform another update operation
UPDATE customer 
SET cost = cost - 50 
WHERE Cust_ID = 502;

-- If something goes wrong, we can rollback to the savepoint (undoes the second update)
ROLLBACK TO sp1;

-- If everything is correct, commit the transaction to make changes permanent
COMMIT;
