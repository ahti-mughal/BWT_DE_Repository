

create database task7;

 --creating one table from another table 

create table first(
id int not null,
firstname varchar(60) not null,
deprtment varchar(60) not null
);

insert into first(id,firstname,deprtment)
values(3,'qasima','bscs');

select* from first;
-------------------------------------------------
SELECT 
  id,
  firstname,
  deprtment
INTO second
FROM first;

select *from second;
-----------------------------------------------------
     --inserting rows from one table to another
SELECT 
  id,
  firstname,
  deprtment
INTO third
FROM first
where deprtment='bscs';

select *from third;
--------------------------------------------------------------------------------------------
--truncating 

create table fourth(
id int not null,
firstname varchar(60) not null,
deprtment varchar(60) not null
);

truncate table fourth;
--------------------------------------------------------------------------------------------

--updating records
UPDATE first
SET firstname='Juan'
WHERE deprtment='bscs';

             -----difference between truncate and delete
	--truncate
--The truncate statement is a DDL or data definition language command used to removes 
--complete data from the table without removing the table structure. We cannot use the
--WHERE clause with this command, so that filtering of records is not possible. After 
--executing this command, we cannot rollback the deleted data because the log is not
--maintained while performing this operation.

    --delete
--It is a DML or data manipulation command used to deletes records from a table that is 
--not required in the database. It removes the complete row from the table and produces 
--the count of deleted rows. We need the delete permission on the target table to execute 
--this command. It also allows us to filter and delete any specific records using the WHERE 
--clause from the table.
-------------------------------------------------------------------------------------------------



