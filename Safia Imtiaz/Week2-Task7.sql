--Identity
Create Table tblPerson
(
	PersonId int Identity(1,1) Primary Key,
	Name nvarchar(20)
)

Insert into tblPerson values('Safia')
Insert into tblPerson values('Ayesha')
Insert into tblPerson values('Sadaf')

Delete from tblPerson where PersonId = 2
Insert into tblPerson values(2,'Ayesha')

--An explicit value for the identity column in table 'tblPerson' can only be specified when a column list is used and IDENTITY_INSERT is ON.

Set Identity_insert tblPerson on

Insert into tblPerson (PersonId, Name) values(2,'Ayesha')

Insert into tblPerson values('Bano')

--Explicit value must be specified for identity column in table 'tblPerson' either when IDENTITY_INSERT is set to ON or when a replication user is inserting into a NOT FOR REPLICATION identity column.

Set Identity_insert tblPerson off

Insert into tblPerson values('Bano')

Delete from tblPerson
Insert into tblPerson values('Bano')

dbcc checkident(tblPerson , Reseed , 0)

Insert into tblPerson values('Bano')

Select * from tblPerson

--How to create a new table by using existing table

Select * from StudentMarks
Select * into studentMarksNew from StudentMarks
Select * from StudentMarksNew

--How to create a new table structure with existing table
Select * into tbleEmployee from tblPerson where 1 = 0

Select * From tbleEmployee

--How to insert rows from one table to another table
Select * From tblPerson
Create Table Rowtable
(
	StdId int Identity(1,1) Primary Key,
	StdName nvarchar(20)
)

Insert into Rowtable Select Name from tblPerson where PersonId = '1';
Select * From Rowtable

--update

update tblPerson
set Name = 'Safia'
where PersonId = 1
select * from tblPerson

--delete only row
delete from tblPerson where Name = 'Sadaf'
select * from tblPerson

--delete all data
truncate table tblPerson
select * from tblPerson

