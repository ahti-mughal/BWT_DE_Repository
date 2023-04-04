--Sub Queries
	--Single Row Sub Queries
--How many products have a unit price higher than the average unit price of all products in the Northwind database?
select count(ProductName) as CountofProduct from Products where UnitPrice  > (select avg(UnitPrice) from Products);

--Which employee has the highest number of orders assigned to them in the Northwind database?
select FirstName, LastName from Employees where EmployeeID = (select top 1 EmployeeID from Orders group by EmployeeID order by Count(OrderID) Desc);

	--Multi Row Sub Queries
--Which customers have placed orders for more than 10 different products?
select c.CustomerID, c.CompanyName from Customers c where 
( select count(distinct ProductID)
  from [Order Details] od
  inner join Orders o on od.OrderID = o.OrderID
  where o.CustomerID = c.CustomerID
) > 10;

--Which products have been ordered by customers in more than 5 different countries?

select p.ProductID, p.ProductName
from Products p
where 
    (select count(distinct o.ShipCountry)
     from [Order Details] od
     inner join Orders o on od.OrderID = o.OrderID
     inner join Customers c on o.CustomerID = c.CustomerID
     where od.ProductID = p.ProductID
    ) > 5;


	--Nested Sub Queries

select * from customers
where CustomerID IN (
  select CustomerID
  from orders
  where Freight > (
    select avg(Freight)
    from orders
  )
)

	--Co-Related Sub Queries
SELECT 
   CompanyName, 
   (SELECT MAX(OrderDate) FROM Orders WHERE Orders.CustomerID = Customers.CustomerID) AS LastOrderDate 
FROM Customers;

--Views
	--Creating
create view OrderCost as
select c.ContactName, o.OrderID, o.Freight 
from Customers c 
join Orders o on c.CustomerID = o.CustomerID;

	--Altering
Alter view OrderCost as 
select c.ContactName, o.OrderID, o.Freight 
from Customers c 
join Orders o on c.CustomerID = o.CustomerID
where o.Freight>10;

	--Dropping
Drop view OrderCost

--Indexes
	--Clustered Index(Creation)
CREATE CLUSTERED INDEX OrderDateIndex
ON Contacts (ContactID);

CREATE CLUSTERED INDEX OrderIDIndex
ON [Order Details] (OrderID);


	--NonClustered Index(Creation)
CREATE NONCLUSTERED INDEX idx_Customer_LastName
ON Customers (ContactName)

CREATE NONCLUSTERED INDEX ProductNameIndex
ON Products (ProductName);

	--Use of NONCLUSTERED INDEX
SELECT *
FROM Products
WHERE ProductName = 'Chang'

SELECT *
FROM Customers
WHERE ContactName = 'Hanna Moos'

	--Alter & Drop of Indexes
ALTER INDEX idx_Customer_LastName ON Customers REORGANIZE;

DROP INDEX idx_Customer_LastName on Customers;

