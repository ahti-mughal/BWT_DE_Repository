--Creating new Database
CREATE DATABASE asad_testDB;

--Altering Database Name
ALTER DATABASE asad_testDB modify name = asad_testDB2

--Another method to alter Database name
sp_renamedb 'asad_testDB2' , 'my_first_DB'

--Deleting Data Base
DROP DATABASE my_first_DB