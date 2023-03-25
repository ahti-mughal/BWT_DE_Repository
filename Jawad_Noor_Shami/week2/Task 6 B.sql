CREATE TABLE Company (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50)
);


ALTER TABLE Company
ADD salary DECIMAL(10,2);

ALTER TABLE Company
ALTER COLUMN age INT NOT NULL;


DROP TABLE Company;





