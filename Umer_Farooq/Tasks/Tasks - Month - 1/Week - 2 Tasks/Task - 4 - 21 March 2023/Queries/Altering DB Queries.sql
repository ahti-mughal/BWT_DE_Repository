-- Altering Database:

-- Renaming the DB to testDB

ALTER DATABASE myDB MODIFY NAME = testDB;

-- Changing recovery model from Simple to Full:

USE testDB
Go
ALTER DATABASE testDB
SET RECOVERY FULL;