-- 1) Program to find the largest of two numbers
SET SERVEROUTPUT ON;
DECLARE
    a INT := 25;
    b INT := 40;
BEGIN
    IF a > b THEN
        DBMS_OUTPUT.PUT_LINE('Largest number is: ' || a);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Largest number is: ' || b);
    END IF;
END;
/

-- 2) Program to print numbers 1 to 5 using EXIT WHEN condition
SET SERVEROUTPUT ON;
DECLARE
    i INT := 1;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('Number: ' || i);
        i := i + 1;
        EXIT WHEN i > 5;
    END LOOP;
END;
/
