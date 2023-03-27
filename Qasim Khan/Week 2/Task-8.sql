use thirdDb

/* */

/* Write an SQL query to insert multiple rows into a table using a single INSERT statement. */

INSERT INTO Employee(
    Employee_ID,
	FirstName,
	LastName,
	Salary
)
VALUES
	(
	    103,
		'Abdul',
		'Wahab',
		3000000
	),
	(
	    104,
		'Junaid',
		'Amjad',
		2000000
	)
SELECT * FROM Employee

ALTER TABLE Employee
ADD City varchar(255)

INSERT INTO Employee(
     City
)
VALUES('Karachi')

/* Write an SQL query to delete all the rows from a table that have a certain value in a column*/

DELETE FROM Employee WHERE City = 'Karachi'

/* Write an SQL query to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column.
 */



/* Write an SQL query to update multiple columns in a table based on a condition using the UPDATE statement. */

UPDATE Employee
SET Salary = 50000000
WHERE LastName = 'Khan'

