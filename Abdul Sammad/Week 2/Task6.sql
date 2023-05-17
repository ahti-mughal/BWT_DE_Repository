create database task6;

use task6;

create table table1(
Id int primary key not null,
fname varchar default 'khan',
age int check(age>18),
);

create table table2(
id int,
lname varchar(20),
constraint id_table1 foreign key(id) references table1(Id) 
)


Alter table table2 add phoneNo int;

drop table table2;