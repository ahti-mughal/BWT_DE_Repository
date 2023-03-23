-- Syntax:
-- DROP DATABASE  [ IF EXISTS ]
--    database_name 
--    [,database_name2,...];

-- Important to know before deleting DB:

-- 1.DROP DATABASE statement deletes the database and also the physical disk files used by the database. 
-- Therefore, you should have a backup of the database in case you want to restore it in the future.

-- 2.Second, you cannot drop the database that is currently being used.
-- It will give an error

DROP DATABASE IF EXISTS testDB;
