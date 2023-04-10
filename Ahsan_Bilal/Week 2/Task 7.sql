use Northwind;

/*###################################
=========== INSERT ==================
####################################*/

/* Created auto increment id table*/

/*
create table mytable(
ID int identity(1,1) primary key,
Name varchar(50) not null,
Age varchar(50) default 18,
);
*/

/*===================Insert using id but id here is auto ===================*/
/* 

insert into dbo.mytable(name,age)
values('ahsan',22);*/

/*===================Insert Creating a table from another table ===================*/
/*
select * into mynewtable
from Employees
where TitleOfCourtesy = 'Ms.';*/

/*===================Insert  Inserting rows from one table to another ===================*/
/* first we create a table */
/*
create table mrpractabel(
ID int Identity(1,1) primary key,
Name varchar(50) not null,
Title varchar(5) ,
HireDate date default getDate() ,
)

insert into mrpractabel(Name, Title, HireDate)
select FirstName, TitleOfCourtesy,HireDate from Employees 
where TitleOfCourtesy= 'Mr.';*/



/*###################################
=========== Update ==================
####################################*/

/*
UPDATE Employees
SET HireDate = GETDATE()
WHERE FirstName = 'Nancy';*/

/* select * from employees*/

/*###################################
=========== Delete ==================
####################################*/

/*=================== Delete =====================*/

/*DELETE FROM Employees
WHERE FirstName = 'Nancy';*/


/*=================== Truncate =====================*/

/*TRUNCATE TABLE example_table;*/


/*=================== Difference between Truncate & Delete =====================

The main difference between the DELETE and TRUNCATE commands 
is that DELETE removes specific rows based on a WHERE clause, whereas
TRUNCATE removes all the rows in a table without any condition*/