CREATE DATABASE HRDB_2;
GO

CREATE TABLE employees_data (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees_data(emp_id,first_name,last_name,salary,hire_date)
VALUES (23165,'Muhammad','Mesum',2000,'2010-01-06');

ALTER TABLE employees_data
ADD CONSTRAINT check_salary
CHECK (salary > 0);

SELECT * FROM employees_data;


