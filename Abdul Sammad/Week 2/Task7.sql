use NORTHWND;

select * from Employees;

create table stores(
store_name varchar not null,
store_location varchar not null,
);

/* Inserting Identity */
alter table stores
add store_id int  primary key identity(1,1);

/* Creating a table from another Table */


/* CREATE TABLE stores_new AS
SELECT *
FROM stores; */

/*inserting rows from one table to another*/

insert into stores select * from Employees;


/* Update */
select * from Products;

update products set UnitPrice = 19 where ProductID = 1;

Truncate table stores;

/* truncate resets the table by deleting its whole content

while deletes content it can be one row or one column or it can based on some condition */