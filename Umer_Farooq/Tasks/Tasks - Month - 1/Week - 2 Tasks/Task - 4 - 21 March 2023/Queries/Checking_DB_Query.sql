-- Checking if Database is Created?
Select
	name
From
	master.sys.databases
Order By
	name;

-- Or you can also execute stored procedure to check if DB is created?

EXEC sp_databases;