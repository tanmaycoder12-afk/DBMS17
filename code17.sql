-- 1) Program to check whether specified employee exists in EMP table
DECLARE
    v_empno EMP.empno%TYPE := &user_empno;
    v_count INT;
BEGIN
    SELECT COUNT(*) INTO v_count FROM EMP WHERE empno = v_empno;
    
    IF v_count > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee exists.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee does not exist.');
    END IF;
END;
/

-- 2) Program to print odd numbers from 1 to 10
BEGIN
    FOR i IN 1..10 LOOP
        IF MOD(i, 2) != 0 THEN
            DBMS_OUTPUT.PUT_LINE('Odd Number: ' || i);
        END IF;
    END LOOP;
END;
/
