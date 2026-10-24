-- 1) Program to find the maximum of three numbers
SET SERVEROUTPUT ON;
DECLARE
    a INT := 10;
    b INT := 25;
    c INT := 40;
BEGIN
    IF a >= b AND a >= c THEN
        DBMS_OUTPUT.PUT_LINE('Maximum number is: ' || a);
    ELSIF b >= a AND b >= c THEN
        DBMS_OUTPUT.PUT_LINE('Maximum number is: ' || b);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Maximum number is: ' || c);
    END IF;
END;
/

-- 2) Program to print numbers 1 to 5 using a WHILE LOOP
SET SERVEROUTPUT ON;
DECLARE
    i INT := 1;
BEGIN
    WHILE i <= 5 LOOP
        DBMS_OUTPUT.PUT_LINE('Number: ' || i);
        i := i + 1;
    END LOOP;
END;
/
