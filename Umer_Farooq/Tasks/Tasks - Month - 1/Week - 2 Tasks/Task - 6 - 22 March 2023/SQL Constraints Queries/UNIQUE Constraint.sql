DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  employee_id INT PRIMARY KEY IDENTITY(100,2),
  employe_name VARCHAR(225) NOT NULL,
  email VARCHAR(255),
  phone_num varchar(225),

  CONSTRAINT unique_const UNIQUE(email, phone_num)
);

INSERT INTO employees(employe_name, email, phone_num) 
VALUES ('Umer', 'umer@gmail.com', '030222'), 
	   ('Asim', 'asim@gmail.com', '03000');

SELECT * FROM employees;
