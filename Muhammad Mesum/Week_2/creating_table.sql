CREATE DATABASE HRBD;
GO

USE HRBD;
GO

CREATE TABLE EMPLOYEES
(
ID INT IDENTITY PRIMARY KEY,
first_name varchar(20),
last_name varchar(30) not null,
email varchar(30) unique,
salary int
);
GO

INSERT INTO EMPLOYEES (first_name, last_name, email,salary)
VALUES ('MUHAMMAD', 'MESUM', 'mesum@gmail.com',20000);
GO

ALTER TABLE employees
ADD CONSTRAINT check_salary
CHECK (salary > 0);

SELECT * FROM EMPLOYEES;



