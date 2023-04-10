--Indexes
--Indexes are database objects that are used to speed up the retrieval of data from tables. They work by creating a sorted list of the values in one 
--or more columns of a table, which allows the database engine to quickly find the data that matches a given search criteria. 
--Here are some of the things you should know about indexes:

--a) Clustered Index:
--A clustered index determines the physical order of the data in a table. Each table can have only one clustered index, and
--it is created on the primary key column by default.  If there is no primary key column, you can create a clustered index on any unique column. 
--Here is an example of how to create a clustered index on the EmployeeID column of the Employee table:
CREATE CLUSTERED INDEX idx_EmployeeID ON Employee(EmployeeID);


--b) Non-Clustered Index:
--A non-clustered index is a separate structure that stores a sorted list of the values in one or more columns of a table. Each table can have multiple
--non-clustered indexes, and they can be created on any column or combination of columns in a table.
--Here is an example of how to create a non-clustered index on the LastName column of the Employee table:
CREATE NONCLUSTERED INDEX idx_LastName ON Employee(LastName);


--c) Creating, Altering, and Dropping Indexes:
--To create an index, you can use the CREATE INDEX statement, followed by the name of the index and the columns that it should be based on
--To alter an index, you can use the ALTER INDEX statement, and to drop an index, you can use the DROP INDEX statement. Here are some examples:
-- Create a non-clustered index on the FirstName and LastName columns of the Employee table
CREATE NONCLUSTERED INDEX idx_FirstName_LastName ON Employee(FirstName, LastName);

-- Alter the idx_LastName index to include the FirstName column
ALTER INDEX idx_LastName ON Employee ADD FirstName;

-- Drop the idx_FirstName_LastName index
DROP INDEX idx_FirstName_LastName ON Employee;


--d) Using Indexes:
--To use an index, you need to specify it in the query using the INDEX hint or by enabling the database engine to choose the best index using the query optimizer.
--Here is an example of how to use the idx_LastName index in a query that selects the first name and last name of all employees whose last name is 'Doe':
SELECT FirstName, LastName
FROM Employee WITH (INDEX(idx_LastName))
WHERE LastName = 'Doe';
