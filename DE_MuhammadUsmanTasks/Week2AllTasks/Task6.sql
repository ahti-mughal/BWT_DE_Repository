create database UsmanTask6
use UsmanTask6

create table Students(
[S_ID] int primary key,
[S_Name] varchar(30),
[S_DOB] varchar(30)
)

Insert into Students(S_ID,S_Name,S_DOB) values (354673421,'Muhammad Usman', '29/11/2000')

select * from Students

alter table Students add email varchar(50) NOT NULL;

drop table Students




