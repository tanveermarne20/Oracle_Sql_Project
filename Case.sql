SELECT *
FROM EMPLOYEES;

--SALARY<5000 THEN 'D'
--SALARY 50001 TO 10000 'C'
--SALARY 10001 TO 15000 'B'
--SALARY 15001 TO 20000 'A'
--SALARY >2000 'A+'


--THIS IS CASE FOR EMPLOYEES TABLE FOR SALARY COLUMNS GRADE
SELECT DEPARTMENT_ID,FIRST_NAME,SALARY,
 CASE 
 WHEN SALARY<5000 THEN 'D'
 WHEN SALARY BETWEEN 50001 AND 10000 THEN 'C'
 WHEN SALARY BETWEEN 10001 AND 15000 THEN 'B'
 WHEN SALARY BETWEEN 15001 AND 20000 THEN 'A'
 WHEN SALARY>20000 THEN 'A+'
 ELSE 'OTHER'
 END AS SALARY_GRADE
FROM EMPLOYEES;

--THIS IS CASE FOR EMPLOYEES TABLE FOR JOB_ID COLUMN
SELECT EMPLOYEE_ID,FIRST_NAME,JOB_ID,
CASE
 WHEN JOB_ID='AD_PRES' THEN 'ADDITIONAL_PRESIDENT'
 WHEN JOB_ID='IT_PROG' THEN  'IT_PROGRAMMER'
 WHEN JOB_ID='AD_VP' THEN 'ADDITIONAL_VICE_PRSIDENT'
 WHEN JOB_ID='FI_MGR' THEN 'FINANCE_MANAGER'
ELSE 'OTHER'
END AS JOB_TITLE
FROM EMPLOYEES;

--THIS IS CASE FOR EMPLOYEES TABLE FOR COMMISSION_PCT COLUMN
SELECT EMPLOYEE_ID,FIRST_NAME,COMMISSION_PCT,
CASE
 WHEN COMMISSION_PCT IS NULL THEN 'NOT COMMISSIONED'
 WHEN COMMISSION_PCT IS NOT NULL THEN 'COMMISSIONED'
END AS COMMISSION_STATUS
FROM EMPLOYEES;


--THIS IS CASE FOR EMPLOYEES TABLE ,DEPARTMENTS,LOCATIONS COLUMN ,--
SELECT 
E.FIRST_NAME,
E.SALARY,
D.DEPARTMENT_NAME,
L.CITY,
 CASE
  WHEN L.CITY='Seattle' THEN 'NORTH AMERICAN'
  WHEN L.CITY='Southlake' THEN 'SOUTH AMERICAN'
ELSE 'OTHERS' END AS CITIZENSTATUS  
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
JOIN LOCATIONS L 
ON (D.LOCATION_ID=L.LOCATION_ID);


--MAIN DIFFERENCE BETWEEN CASE AND DECODE IS CASE RETURN NULL VALUES WHEN WE 
--DID NOT MENTIONED OTHER COLUMNS THEN VAUES
SELECT DEPARTMENT_ID,FIRST_NAME,JOB_ID,
 CASE
  WHEN JOB_ID='AD_PRES' THEN 'ADDITIONAL_PRESIDENT'
  WHEN JOB_ID='AD_VP' THEN 'ADDITIONAL_VICE_PRE'
  WHEN JOB_ID='IT_PROG' THEN 'IT_PROGRAMMER'
END AS JOB_TITLE
FROM EMPLOYEES;









SELECT 
E.FIRST_NAME,
E.JOB_ID,
C.CITY,
CASE
 WHEN JOB_ID='ST_CLERK' THEN 'NICE'
 WHEN JOB_ID='ST_MAN' THEN 'JET'
ELSE 'OTHER' END AS JOB_STATUS
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
JOIN LOCATIONS C
ON (D.LOCATION_ID=C.LOCATION_ID);





SELECT DEPARTMENT_ID,FIRST_NAME,JOB_ID,
 CASE
WHEN JOB_ID='AD_PRES' THEN 'ADDITIONAL_PRESI'
WHEN JOB_ID='AD_VP' THEN 'ADDITIONAL_VICE_PRESIDENT'
WHEN JOB_ID='IT_PROG' THEN 'IT_PROGRAMMER'
WHEN JOB_ID='FI_MGR' THEN 'FINANCE_MANAGER'
  ELSE 'OTHER' END AS JOB_TITLE
FROM EMPLOYEES;

SELECT DEPARTMENT_ID,FIRST_NAME,SALARY,
 CASE
WHEN SALARY<5000 THEN 'D'
WHEN SALARY>5000 AND SALARY<10000 THEN 'C'
WHEN SALARY>10000 AND SALARY<15000 THEN 'B'
WHEN SALARY>15000 AND SALARY<20000 THEN 'A'
ELSE 'A+' END AS SALARY_GRADE
FROM EMPLOYEES;





