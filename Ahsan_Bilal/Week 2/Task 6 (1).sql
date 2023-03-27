/*select * from Northwind.dbo.Employees;*/

/*==============Not Null contraint=================*/

/*alter table Northwind.dbo.Employees
alter column FirstName varchar(50) Not Null;*/

/* below command is just for testing */

/*select * from Northwind.dbo.Employees;*/


/*==============Unique contraint=================*/

/*alter table Northwind.dbo.Employees
add constraint UQ_empid Unique (EmployeeID); */

/* below command is just for testing */

/*select * from Northwind.dbo.Employees;*/


/*==============Default contraint=================*/

/*select * from Northwind.dbo.Orders;*/

/*alter table Northwind.dbo.Orders
add constraint D_orders Default GetDate() for OrderDate; */

/* below command is just for testing */

/*select * from Northwind.dbo.Orders;*/


/*============== Check contraint=================*/

/*select * from Northwind.dbo.Products;*/

/*alter table Northwind.dbo.Products
add constraint chk_products Check (UnitPrice >0); */

/* below command is just for testing */

/*select * from Northwind.dbo.Products;*/


/*============== Primary key contraint=================*/


/*ALTER TABLE Northwind.dbo.Customers
ADD CONSTRAINT PK_CustomerID PRIMARY KEY (CustomerID);*/

/* below command is just for testing */

/*select * from Northwind.dbo.Customers;*/

/*============== Foriegn key contraint=================*/


/*ALTER TABLE Northwind.dbo.Orders
ADD CONSTRAINT FK_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);*/

/* below command is just for testing */

/*select * from Northwind.dbo.Orders