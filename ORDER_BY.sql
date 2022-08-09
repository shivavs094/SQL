CREATE DATABASE employees_dtails;

USE employees_dtails ;

CREATE TABLE shiva_emloyees_4_Order_by (
emloyee_id INT PRIMARY KEY,
emp_name VARCHAR (30),
job_description VARCHAR (15),
salery INT 

);
DROP TABLE  shiva_emloyees_4_Order_by  ;
INSERT INTO shiva_emloyees_4_Order_by VALUES (1,'Ram','ADMIN',1000000),
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

SELECT * FROM  shiva_emloyees_4_Order_by;

SELECT DISTINCT job_description FROM  shiva_emloyees_4_Order_by;   ## DISTINCT is the form of Unique
 
 -- order by
 
SELECT * FROM  shiva_emloyees_4_Order_by
ORDER BY emp_name;

SELECT * FROM  shiva_emloyees_4_Order_by
ORDER BY emp_name desc;
 
SELECT * FROM  shiva_emloyees_4_Order_by
ORDER BY salery desc;

SELECT * FROM  shiva_emloyees_4_Order_by
ORDER BY salery,emp_name;

SELECT * FROM  shiva_emloyees_4_Order_by
WHERE job_description ='manager' 
ORDER BY salery,emp_name;

SELECT * FROM  shiva_emloyees_4_Order_by
ORDER BY (CASE job_description
WHEN 'CEO' THEN 1
WHEN 'ADIMIN' THEN 2
WHEN 'ENGINEER' THEN 3
WHEN 'HR' THEN 4
ELSE 1000 END
),emp_name;