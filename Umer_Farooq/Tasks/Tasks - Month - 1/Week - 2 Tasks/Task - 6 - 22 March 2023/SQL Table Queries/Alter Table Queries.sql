DROP TABLE IF EXISTS my_table;
-- Creating a Table:
CREATE TABLE my_table (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
email VARCHAR(100)
);

SELECT * FROM my_table;

-- Add a new column
ALTER TABLE my_table
ADD job_status VARCHAR(50) NOT NULL DEFAULT 'No Data Given';

-- Insert Values
INSERT INTO dbo.my_table (id, name, age, email, job_status)
VALUES(1, 'Umer', 24, 'ufm594@gmail.com', 'DE Fellow @ Bytewise Limited'),
	  (2, 'Khan', 25, 'khan@gmail.com', 'DE');

-- Drop Column job_status. If there are dependencies then drop with CASCADE.
ALTER TABLE my_table
DROP COLUMN email;

-- Rename a Column
EXEC sp_rename 'my_table.name', 'full_name', 'COLUMN';
SELECT * FROM my_table;

-- Modify the Datatype
ALTER TABLE my_table
ALTER COLUMN full_name TEXT;



