use BWTDE

/*CREATE TABLE customer(
    ID int primary key  Not Null,
    Salary int not null,
	position varchar(255) not null,
	Custname varchar(255) not null,
	experience int not null,
);

SELECT ID,Salary into salary
from [BWTDE].[dbo].[customer]
*/

/*EXEC sp_columns customer;

insert into customer(ID,Salary,	position,Custname,experience) 
values
(3,60000,'sub engineer','amza',6),
(4,20000,'sub engineer','amza',1),
(5,90000,'sub engineer','alama',10)
*/

/*
INSERT INTO salary(ID,Salary)
select ID,salary from customer

EXEC sp_columns salary;

select * from salary
*/


/*
update customer
set Custname='ali' ,Salary=70000
where ID=1
select * from customer
*/

/*
delete from customer 
where Custname='ali' and id=1


truncate table salary



*/

/*
Difference bw truncate and delete is that truncate will delete all data from table and table structure will be remain where as 
delete command is used for specifiy which row use want to delete by specifying the conditions
*/

