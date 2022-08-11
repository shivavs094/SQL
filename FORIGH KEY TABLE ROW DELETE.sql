

CREATE DATABASE employees_dtails_11;

USE employees_dtails_11 ;



CREATE TABLE employee_branch_address (
Branch_id INT PRIMARY KEY   ,
City_name VARCHAR (30) NOT NULL ,
Branch_address VARCHAR (60)
);

select* from employee_details;
select* from employee_branch_address;


drop table employee_branch_address;
drop table employee_details;

CREATE TABLE employee_details (
emloyee_id INT PRIMARY KEY AUTO_INCREMENT  ,
emp_name VARCHAR (30) ,
job_description VARCHAR (15) DEFAULT "not asigned",
salery INT ,
Branch_id INT,
CONSTRAINT FRN_KEY FOREIGN KEY (Branch_id) REFERENCES employee_branch_address(Branch_id)
-- ON DELETE SET NULL
    ### constrain for the pourpuse of reperesed whole column if we need to alter any think we can do with it.
);

INSERT INTO employee_branch_address VALUES(1,'coimbatore','2/12 ram nagar,saravanapatti,CBE'),
(2,'chennai','52/256-2b mariyamman kovil street,koyambedu,chn-600002'),
(3,'Salem','5/344- kollar street,salem 636307')
; 







INSERT INTO employee_details VALUES (1,'Ram','ADMIN',1000000,3),
(2,'Harini','MANAGER',2500000,2),
(3,'George','SALES',2000000,2),
(4,'Ramya','SALES',1300000,1),
(5,'Meena','HR',2000000,2),
(6,'Ashok','MANAGER',3000000,1),
(7,'Abdul','HR',2000000,2),
(8,'Ragu','CEO',80000000,3),
(9,'Aravind','MANAGER',28000000,2),
(10,'Ramya','ENGINEER',1000000,3),
(11,'Akshay','ENGINEER',1000000,1),
(12,'Jhone','ADIMIN',2200000,2),
(13,'Abinaya','ENGINEER',2100000,3)
;

DELETE FROM employee_details
WHERE emloyee_id=3;