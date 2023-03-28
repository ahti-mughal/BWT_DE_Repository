USE northwind;

select ProductName,UnitPrice,UnitsInStock 
from Products 
where UnitPrice<20 
order by ProductName


select OrderID,CustomerID,OrderDate
from Orders 
where CustomerID is null 
order by OrderDate


select CategoryName from Categories
SELECT distinct ShipCountry  from Orders


