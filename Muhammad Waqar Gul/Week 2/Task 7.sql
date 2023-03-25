use northwind;

-- insert identity
alter table Customers add cust_id Integer Identity(1,1);


INSERT INTO Customers(CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, CustomerID)
VALUES ('ABC Corporation', 'John Smith', 'Sales Manager', '123 Main St', 'Anytown', 'CA', '12345', 'USA', '555-1234', '555-5678', '1999');

-- create table from another table
select CustomerID,City,Region,PostalCode,Country into cust_contact from Customers;

-- insert rows from one table to another
insert into cust_contact (CustomerID,Region) select  CustomerID,Region from Customers ;

-- update
update Customers set City='KHI', Region='PK' where CompanyName='ABC Corporation';


--delete
delete from Customers where City='KHI';

--truncate
truncate table students;


--Delete command deletes any row from table which satisifes the criteria.
--Truncates deletes all rows from a table and it is faster than delete.