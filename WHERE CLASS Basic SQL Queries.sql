CREATE DATABASE employees_dtails;

USE employees_dtails;

CREATE TABLE shiva_emloyees (
emloyee_id INT PRIMARY KEY,
emp_name VARCHAR (30),
job_description VARCHAR (15),
salery INT 

);
DROP TABLE  shiva_emloyees ;
INSERT INTO shiva_emloyees VALUES (1,'Ram','ADMIN',1000000),
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

SELECT * FROM  shiva_emloyees;

SELECT * FROM  shiva_emloyees
WHERE emp_name='Ragu';

SELECT * FROM  shiva_emloyees
WHERE emp_name<>'Ragu';

SELECT * FROM  shiva_emloyees
WHERE salery>2000000;

SELECT * FROM  shiva_emloyees
WHERE salery>2000000 AND job_description='MANAGER' OR job_description='HR' ;

SELECT * FROM  shiva_emloyees
WHERE job_description='MANAGER' OR job_description='HR' ;

SELECT * FROM  shiva_emloyees
WHERE job_description IN ('ADIMIN','MANAGER');

SELECT * FROM  shiva_emloyees
WHERE job_description NOT IN ('ADIMIN','MANAGER');

SELECT * FROM  shiva_emloyees
WHERE salery BETWEEN 1000000 AND 3000000
LIMIT 5;

SELECT * FROM  shiva_emloyees
WHERE emp_name LIKE 'A%';

SELECT * FROM  shiva_emloyees
WHERE emp_name NOT LIKE 'A%';

SELECT * FROM  shiva_emloyees
WHERE emp_name LIKE '%A%';

SELECT * FROM  shiva_emloyees
WHERE emp_name LIKE '__A%';

SELECT * FROM  shiva_emloyees
WHERE emp_name LIKE 'A%A';

SELECT * FROM  shiva_emloyees
WHERE emp_name LIKE 'A\%';

UPDATE shiva_emloyees
SET job_description='civil'
WHERE job_description= 'ENGINEER' ;

#DELETE FROM shiva_emloyees
#where emloyee_id in (12,13);
