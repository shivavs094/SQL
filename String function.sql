CREATE DATABASE employees_dtails_6;

USE employees_dtails_6 ;

CREATE TABLE employees_dtails_6 (
emloyee_id INT PRIMARY KEY,
emp_name VARCHAR (30),
job_description VARCHAR (15),
salery INT 

);
DROP TABLE  employees_dtails_6  ;
INSERT INTO employees_dtails_6 VALUES (1,'Ram','ADMIN',1000000),
(2,'Harini','MANAGER',2500000),
(3,'George','SALES',2000000),
(4,'Ramya','SALES',1300000),
(5,'Meena','HR',2000000),
(6,'Ashok','MANAGER',3000000),
(7,'Abdul','HR',2000000),
(8,'Ragu','CEO',80000000),
(9,'Aravind','MANAGER',28000000),
(10,'Ramya','ENGINEER',1000000),
(11,'Akshay','ENGINEER',1000000),
(12,'Jhone','ADIMIN',2200000),
(13,'Abinaya','ENGINEER',2100000)
;

SELECT * FROM  employees_dtails_6;

SELECT count(*)No_of_rows 
FROM  employees_dtails_6;

SELECT count(*)No_of_rows 
FROM  employees_dtails_6
where job_description='MANAGER'
;

SELECT avg (salery)
FROM  employees_dtails_6
where job_description='MANAGER'
;

SELECT sum(salery)
FROM  employees_dtails_6
where job_description='ENGINEER'
;

SELECT max(salery)
FROM  employees_dtails_6
where job_description='ENGINEER'
;

SELECT sum(salery)
FROM  employees_dtails_6
where job_description='ENGINEER'
;

SELECT UCASE(emp_name)Employees,salery,job_description
FROM  employees_dtails_6
WHERE job_description IN ('ADIMIN','MANAGER')
ORDER BY emp_name
;

SELECT emloyee_id,ucase(emp_name) Employees,char_length(emp_name)Char_count,concat('RS.',format (salery,2) )Salery 
,job_description
FROM  employees_dtails_6
order by emp_name
;

SELECT LEFT(job_description,3)
FROM  employees_dtails_6

;