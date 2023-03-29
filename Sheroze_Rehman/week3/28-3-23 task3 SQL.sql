use northwind

select * from Customers
inner join Orders
ON Customers.CustomerID=Orders.CustomerID

select * from Customers 
inner join Orders
on Customers.CustomerID=Orders.CustomerID



select shipCountry,orders.OrderID from Orders
full outer join [Order Subtotals]
on Orders.OrderID=[Order Subtotals].OrderID	

SELECT Customers.ContactName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.ContactName;


SELECT Customers.ContactName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.ContactName;

select [Products by Category].CategoryName, 
[Products Above Average Price].ProductName,
[Products Above Average Price].UnitPrice
from [Products Above Average Price] 
left join [Products by Category] on [Products Above Average Price].ProductName=[Products by Category].ProductName


SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

select [Products by Category].CategoryName, 
[Products Above Average Price].ProductName,
[Products Above Average Price].UnitPrice
from  [Products by Category]
right join [Products Above Average Price]  on [Products by Category].ProductName=[Products Above Average Price].ProductName
order by CategoryName



select * from [Customer and Suppliers by City]

SELECT A.ContactName AS CustomerName1, B.ContactName AS CustomerName2, A.City,A.CompanyName
FROM [Customer and Suppliers by City] A, [Customer and Suppliers by City] B
WHERE A.ContactName != B.ContactName
AND A.City = B.City
ORDER BY A.City;

SELECT A.ContactName AS CustomerName1, B.ContactName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City 
ORDER BY A.City;

select products.ProductName,Categories.CategoryID from Categories cross join Products
select * from [Current Product List] cross join Products


select ProductName,Categories.CategoryName from [Products by Category] cross join Categories


select * from Products
where ProductID not in (select productid from [Order Details])

select * from Contacts where ContactID not in (select ContactID from [Order Details Extended])



