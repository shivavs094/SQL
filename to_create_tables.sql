USE  shiva_first_1;
USE shiva_first_1;

CREATE TABLE student (
id INT PRIMARY KEY,
name VARCHAR (30),
GPA DECIMAL (3,2)
);

DESCRIBE student ;

DROP TABLE  student ;

ALTER TABLE student ADD department VARCHAR(15) ;

INSERT INTO student VALUES (1,'Shiva',9.51,'civil');
INSERT INTO student VALUES (2,'Honey',9.21,'Bio chemistry');
INSERT INTO student VALUES (3,'kannama',9.00,'Doctor'),
(4,'subhash chanthirabose',8.5,'Geology');

INSERT INTO student(id,name) VALUES (5,'Rajkumar'); 


select * from student ;

select id,name from student ;