-- In SQL Server, the TRUNCATE and DELETE statements are used to remove data from a table, 
-- but they have some differences in how they operate.

-- Truncate VS Delete:
-- 1. Use Less Transaction logs:
-- DELETE statement removes rows one at a time and inserts an entry in the transaction log for each removed row
-- While Truncate deletes the data by deallocating the data pages used to store the table data and inserts 
-- only the page deallocations in the transaction logs.

-- 2. Use fewer locks:
-- DELETE statement is executed using a row lock, each row in the table is locked for removal. 
-- The TRUNCATE TABLE locks the table and pages, not each row.

-- 3. Identity reset:
-- If the table to be truncated has an identity column, the counter for that column is reset to the seed value when data
-- is deleted by the TRUNCATE TABLE statement but not the DELETE statement.

-- Creating a Test Table and inserting rows = 617587
DROP Table If Exists TestTable;

CREATE TABLE TestTable (
   ID INT IDENTITY(1,1) PRIMARY KEY,
   Name VARCHAR(50),
   Age INT
)

DECLARE @i INT = 1 -- Declaring a int variable called @i and initializes it to 1
WHILE @i <= 617587 -- It checks if int variable i is less than or equal to 617587E
BEGIN -- loop Body Starts
   INSERT INTO TestTable (Name, Age) VALUES ('TestName', 25)
   SET @i = @i + 1 -- Incrementing i by 1
END

SELECT * FROM TestTable;

-- Now Lets Compare the Speed of Deletion:

-- Truncate:
SET STATISTICS TIME ON -- This command enables the display of execution time statistics for each query in the current session.
TRUNCATE TABLE TestTable
SET STATISTICS TIME OFF;


-- Delete:
SET STATISTICS TIME ON
DELETE FROM TestTable
SET STATISTICS TIME OFF;