create Database dbDE_Practice
go
use dbDE_Practice
go
create table tblFellowship
(
Fellow_ID int identity(1,1) primary key not null,
Fellow_Name Varchar(50)
)
go

ALter table tblFellowship
Add Contact int

go

Drop table tblFellowship
