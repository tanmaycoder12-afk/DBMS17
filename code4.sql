-- =====================================================
-- 1) DCL (Data Control Language) Commands Example
-- =====================================================

-- DCL commands are used to control access to data in a database.
-- The two main commands are GRANT and REVOKE.

-- GRANT: Gives specific privileges to a database user
-- Example: Giving SELECT and INSERT permissions on the employee table to a user named 'john_doe'
GRANT SELECT, INSERT ON Company.employee TO 'john_doe'@'localhost';

-- REVOKE: Removes previously granted or denied privileges from a user
-- Example: Taking away the INSERT permission from 'john_doe'
REVOKE INSERT ON Company.employee FROM 'john_doe'@'localhost';
