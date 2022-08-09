
CREATE DATABASE employees_dtails_7;

USE employees_dtails_7 ;


CREATE TABLE shiva_emloyees_7 (
emloyee_id INT PRIMARY KEY,
emp_name VARCHAR (30),
job_description VARCHAR (15),
salery INT 

);

DROP TABLE  shiva_emloyees_7  ;
INSERT INTO shiva_emloyees_7 VALUES (1,'Ram','ADMIN',1000000),
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
(12,'Jhone','ADMIN',2200000),
(13,'Abinaya','ENGINEER',2100000)
;

SELECT * FROM  shiva_emloyees_7;

SELECT job_description,salery FROM  shiva_emloyees_7
GROUP BY job_description
;

SELECT job_description,FORMAT(AVG(salery),2)
FROM  shiva_emloyees_7
GROUP BY job_description
;

SELECT job_description,count(job_description)No_of_employees 
FROM  shiva_emloyees_7
GROUP BY job_description
;

SELECT job_description,count(emloyee_id)No_of_employees 
FROM  shiva_emloyees_7
WHERE salery >1000000
GROUP BY job_description
HAVING COUNT(emloyee_id)>1
ORDER BY job_description
;


