CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    salary DECIMAL(10,2) CHECK (salary >= 0),
    department_id INT,
    CONSTRAINT fk_department
	FOREIGN KEY (department_id) REFERENCES departments(id)
);

ALTER TABLE employees
ADD CONSTRAINT pk_employees PRIMARY KEY (emp_id),
ADD CONSTRAINT check_salary CHECK (salary >= 1000),

ALTER COLUMN department_id SET DEFAULT 0;

DROP TABLE employees; 