USE myDB
GO

--Create table
--alter table
--delete table

Create Table table1
(
	Name Varchar(100)
)
sp_rename 'table1' , 'table2'
Drop Table table2


--Not Null
Create Table Test
(
	RollNO INT NOT NULL,
	Name	Varchar(100),
	Class	Varchar(10)
)
Insert into Test(RollNO,Name,Class) Values(1,'Safia','12')
Insert into Test(RollNO,Class) Values(2,'12')
select * from Test
delete from Test;
Alter table Test Alter Column Name Varchar(100) NOT NULL;

--Unique
Create Table TestUnique
(
	RollNO INT UNIQUE,
	Name	Varchar(100),
	Class	Varchar(10)
)
Insert into TestUnique(RollNO,Name,Class) Values(1,'Ayesha','10')
Insert into TestUnique(RollNO,Name,Class) Values(2,'Sana','10')

select * from TestUnique

Alter table TestUnique Add Constraint UniqueRollNo UNIQUE(RollNO)

--Primary
Create Table TestPrimary
(
	RollNO		INT Primary Key,
	MobileNo	Int Unique,
	City		Varchar(10)
)
Insert into TestPrimary(MobileNo,City) Values(12345,'London')
Insert into TestPrimary(RollNo,MobileNo,City) Values(1,12345,'London')
select * from TestPrimary

--Check
Create Table TestCheck
(
	RollNO		INT Primary Key,
	Age			INT NOT NULL Check(Age <= 40)
)
Insert into TestCheck(RollNO,Age) Values(1,35);
Select * from TestCheck

--Default
Create Table TestDefault
(
	RollNO		INT Primary Key,
	Age			INT NOT NULL Default 25,
	RecordDate	DateTime Default GetDate()
)
Insert into TestDefault(RollNO) Values(1);
Select * from TestDefault

--Foreign Key
Create Table Student
(
	RollNo	int Primary Key
)
Create Table StudentMarks
(
	RollNo	int,
	Term	Varchar(100),
	Science	int,
	Eng		int,
	Math	int
	FOREIGN KEY (RollNo) REFERENCES Student(RollNo)
)
Insert into Student(RollNo) Values(1)
Insert into StudentMarks(RollNo,Term,Science,Eng,Math) Values(1,'Final',57,23,98)
Insert into Student(RollNo) Values(2)
Insert into StudentMarks(RollNo,Term,Science,Eng,Math) Values(2,'Final',57,75,98)

Select * from Student
Select * from StudentMarks

delete from Student where RollNO = 1
delete from StudentMarks where RollNO = 1

--Table Level
Create Table TestTableLevel
(
	RollNO		INT Primary Key,
	MobileNo	Int Unique,
	City		Varchar(100),
	CONSTRAINT Roll_Mobile_Unique Unique(RollNo,MobileNo)
)
Insert into TestTableLevel(RollNo,MobileNo,City) Values(3,457,'Paris')
Insert into TestTableLevel(RollNo,MobileNo,City) Values(1,12345,'London')
select * from TestTableLevel