-- Primary Key Constriant:
USE myDB
GO

DROP TABLE IF EXISTS fellows;

CREATE TABLE fellows(
fellow_id INT PRIMARY KEY IDENTITY (1,1), -- Identity is used to auto-increment the value of column.
name varchar(50) NOT NULL,
track varchar(20) NOT NULL,
email varchar(100)
);

Insert into fellows(name, track, email) 
Values('Umer', 'DE', 'ufm@gmail.com');

Select * from fellows;

-- You can also ADD PRIMARY KEY to exisiting column.
-- Note: The values in the column must be unique
ALTER TABLE fellows
ADD PRIMARY KEY (fellow_id);

-- A table can have multiple PKs
CREATE TABLE cust
(
cust_id INT,
product_id INT,
descriptn varchar,
PRIMARY KEY(cust_id, product_id)
);