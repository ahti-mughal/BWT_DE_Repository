--1 - INSERT: Identity
create table test1
(
	id INT IDENTITY(1,1),
	FName varchar(100)
)
insert into test1 values ( 'Hasan');
Select * from test1;

insert into test1 values ('Ali');
Select * from test1;

delete test1 where id=3

set identity_insert test1 on
insert into test1(id,FName) values (3, 'ali');

set identity_insert test1 off
set identity_insert test2 on





--Creating a table from another table

select * into test2 from test1
Select * from test2;

--how to create a new table structurte with existing table
select * into test3 from test1
where 1=0

Select * from test3;

--Inserting rows from one table to another

insert into test2(FName) select FName from test2
Select * from test2;





--- UPDATE

UPDATE test1
SET FName='Muhammad'
WHERE id=1;
Select * from test1;


--DELETE

DELETE FROM test1 WHERE id='5';
Select * from test1;




--TRUNCATE 
TRUNCATE table test3
Select * from test3;

