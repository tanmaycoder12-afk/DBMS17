-- 1) Program to find the maximum of three numbers
SET SERVEROUTPUT ON;
DECLARE
    a INT := 15;
    b INT := 45;
    c INT := 30;
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

-- 2) Program to print numbers 1 to 5 using IF THEN inside a loop
SET SERVEROUTPUT ON;
DECLARE
    i INT := 1;
BEGIN
    LOOP
        IF i <= 5 THEN
            DBMS_OUTPUT.PUT_LINE('Number: ' || i);
        END IF;
        i := i + 1;
        EXIT WHEN i > 5;
    END LOOP;
END;
/
