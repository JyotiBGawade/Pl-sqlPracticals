SET serveroutput on;

BEGIN
  dbms_output.put_line('Welcome');
END;

DECLARE
  VcNAME VARCHAR2(30) NOT NULL:='JYOTI';
  ID NUMBER;
BEGIN
  VcNAME := 'JYOTI';
  DBMS_OUTPUT.put_line('VcNAME||""||');
END;

DECLARE
aid NUMBER;
fname VARCHAR2(30);
lname VARCHAR2(30);
BEGIN
SELECT ASSOCIATEID, FIRSTNAME, LASTNAME
INTO aid,fname,lname
FROM ASSOCIATE
WHERE ASSOCIATEID='&ID';
DBMS_OUTPUT.PUT_LINE(aid||' '||fname||' '||lname);
END;

DECLARE
aid ASSOCIATE.ASSOCIATEID%TYPE;
fname ASSOCIATE.FIRSTNAME%TYPE;
lname ASSOCIATE.LASTNAME%TYPE;
BEGIN
SELECT ASSOCIATEID,FIRSTNAME,LASTNAME
INTO aid,fname,lname
FROM ASSOCIATE
WHERE ASSOCIATEID='&ID';
DBMS_OUTPUT.PUT_LINE(aid||' '||fname||' '||lname);
END;

DECLARE
associateRow ASSOCIATE%ROWTYPE;
BEGIN
SELECT *INTO associateRow
FROM Associate
WHERE ASSOCIATEID='&aid';
DBMS_OUTPUT.PUT_LINE(associateRow.ASSOCIATEID||' '||associateRow.firstname);
END;

DECLARE
CURSOR associateCursor IS SELECT * FROM associate;
associateRow ASSOCIATE%ROWTYPE;
BEGIN
OPEN associateCursor;
LOOP
FETCH associateCursor INTO associaterow;
DBMS_OUTPUT.PUT_LINE(associateRow.ASSOCIATEID||' '||associateRow.firstname);
EXIT WHEN associateCursor%notfound;
END LOOP;
CLOSE associatecursor;
END;

DECLARE
staff_name VARCHAR2(50);
fname VARCHAR2(30);
lname VARCHAR2(30);
BEGIN
SELECT ASSOCIATEID, FIRSTNAME, LASTNAME
INTO aid,fname,lname
FROM ASSOCIATE
WHERE ASSOCIATEID='&ID';
DBMS_OUTPUT.PUT_LINE(aid||' '||fname||' '||lname);
END;



SELECT s.staff_name, d.design_code
INTO sname, dcode
FROM staff_master s,designation_master d
WHERE STAFF_SAL='2500';

SQL>SELECT STAFF_NAME,DESIGN_CODE FROM STAFFMASTER WHERE (HIREDATE <'01-JAN-2003') AND STAFF_SAL BETWEEN 12000 AND 25000;

SELECT STAFF_NAME,DESIGN_CODE FROM STAFFMASTER WHERE (HIREDATE <'01-JAN-2003') AND STAFF_SAL BETWEEN 12000 AND 25000;
 drop table emp;
 drop table designation_master;
 drop table department_master;
 drop table student_master;
 drop table student_marks;
 drop table staff_master;
 drop table book_master;
 drop table book_transactions;
 SELECT STAFF_NAME,DESIGN_CODE FROM STAFFMASTER WHERE (HIREDATE <'01-JAN-2003') AND STAFF_SAL BETWEEN 12000 AND 25000;
 
 
 SELECT STAFF_NAME,DESIGN_CODE FROM STAFF_MASTER WHERE (HIREDATE <'01-JAN-2003') AND STAFF_SAL BETWEEN 12000 AND 25000;
 
 SELECT STAFF_CODE,STAFF_NAME,DEPT_CODE FROM STAFF_MASTER WHERE (MONTHS_BETWEEN(SYSDATE,HIREDATE))>=216  ORDER BY HIREDATE DESC;
 
 select * from staff_master where mgr_code is null;