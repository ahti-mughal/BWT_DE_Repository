-- Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement.

-- Updating Multiple Columns Based on a Condition
UPDATE Employees_Record
SET
	Salary = 90000,
	Job_Title = 'Senior Data Engineer'
WHERE 
	Dept = 'Data Services' AND Job_Title = 'Data Engineer';

SELECT * FROM Employees_Record;