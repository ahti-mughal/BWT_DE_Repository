
------------------------------------------TASK 1----------------------------------------
select * from Customers;

select * from Customers where Country='Germany';

select * from Customers order by City DESC;

select distinct City from Customers

select CompanyName,ContactName,Address,Region from Customers where Region is null;

select CompanyName AS COMPANY_NAME,ContactName AS CONTACT_NAME,Address AS ADDRESS,Region AS REGIONS from Customers where Region is null;

select * from Employees where Extension between 500 and 5000;

select * from Employees where city like 'sea%'

select * from Employees where TitleOfCourtesy IN ('Ms.','Mrs.','Dr.')

select top 20 * from Customers

select City from Customers union select City from Suppliers;

select City from Customers intersect select City from Suppliers

select City from Customers except select City from Suppliers

------------------------------------------TASK 2----------------------------------------

select ProductName,UnitPrice,UnitsInStock from Products where UnitPrice < 20 order by ProductName;

select OrderID,OrderDate,CustomerID from Orders where CustomerID is null order by OrderDate

SELECT DISTINCT C.CategoryName, O.ShipCountry
FROM Categories AS C
JOIN 
Products AS P 
ON C.CategoryID = P.CategoryID
JOIN 
[Order Details] AS OD
ON P.ProductID =OD.ProductID
JOIN Orders AS O
ON OD.OrderID = O.OrderID 












