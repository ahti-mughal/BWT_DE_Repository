
/* insert multiple rows into a table using a single INSERT statement*/
INSERT INTO ExampleTable (ID, Name, Age)
VALUES
    (4, 'Alice', 28),
    (5, 'Tom', 35),
    (6, 'Emma', 42);

/* to delete all the rows from a table that have a certain value in a column*/
DELETE FROM ExampleTable
WHERE Name = 'Bob';

/*to delete all the rows from a table that have a certain value in a column, and that meet a certain condition in another column*/

DELETE FROM ExampleTable
WHERE Name = 'Bob'
AND Age > 30;

/* to update multiple columns in a table based on a condition using the UPDATE statement*/
UPDATE ExampleTable
SET Name = 'Alice', Age = 29
WHERE ID = 1;
