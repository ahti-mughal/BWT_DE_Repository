Use Northwind 
Go 
                            /* -----------------Task 5-----------------------*/
/* Single row sub queries*/
SELECT CustomerID FROM Customers WHERE Country='Mexico'

/* Example 2 of Single Row Sub Queries */
SELECT ProductName,UnitPrice as Price FROM Products  where UnitPrice >
(SELECT avg(UnitPrice)   FROM [Order Details]  WHERE Discount =0) order by Price;

/* Nested Sub Queries */
SELECT OrderID,OrderDate,ShippedDate FROM Orders  WHERE  OrderDate<'1996-07-04' or ShipRegion in         
(SELECT Region	FROM Customers	WHERE ContactTitle='Owner' or ShipCountry<>'France'	
or ContactName Like '%Antonio' AND EXISTS		        
(SELECT CompanyName FROM Suppliers	WHERE CompanyName = 'Exotic Liquids'));
/* Example 2 of Nested Sub Queries */
SELECT ProductName,AVG(UnitPrice)  as AveragePrice
FROM Products   GROUP BY ProductName   HAVING AVG(UnitPrice) <
(SELECT max(avg(UnitPrice))   FROM [Order Details]      
WHERE Discount < 0.5) order by AveragePrice;

/* Multi row sub queries*/
SELECT OrderID, OrderDate ,CustomerID, ShipCity
FROM Orders
WHERE CustomerID IN(
SELECT CustomerID FROM Customers
WHERE Country='Mexico');

/* Example 2 of Mlti Row Sub Queries */
SELECT ProductName,UnitPrice as Price,QuantityPerUnit
FROM  Products
WHERE ProductID=ANY(
SELECT ProductID FROM [Order Details]
WHERE Discount=0);

/*Correlated Subquery */ 
SELECT  FirstName+LastName AS "Employee Name" ,HireDate
       FROM Employees a WHERE EXISTS
(SELECT EmployeeID from  Employees b
       WHERE a.HireDate	 < b.HireDate order by a.HireDate);

/* Example 2 of Corelated Sub Queries */
SELECT  FirstName+LastName AS "Employee Name" ,HireDate
       FROM Employees a WHERE NOT EXISTS
(SELECT EmployeeID from  Employees b
       WHERE a.EmployeeID	= b.ReportsTo );

	                /* ----------------------------------------*/

/*Purpose of Views:
1: Views provides security by letting users access of only data it is concerned through the view, 
without granting permissions of underlying base tables of the view.
2:Can provide huge time savings in writing queries by already having a group of frequently accessed tables 
joined together in a view.*/
GO /* Start of view Ordre Summary */
CREATE VIEW  order_summary
 as
 select Orders.OrderID,Orders.OrderDate,Customers.CustomerID,Products.ProductName,Customers.ContactName,
  (Products.UnitPrice*[Order Details].Quantity)-((Products.UnitPrice*[Order Details].Quantity)
  * disc_percent :: float/100) as cost
  from Customers 
  INNER join Orders on Customers.CustomerID= Orders.CustomerID
  INNER join [Order Details] on [Order Details].OrderID=Orders.OrderID
  INNER join Products on Products.ProductID=[Order Details].ProductID; 
GO/* End of view*/

/*Alter View*/ 
Alter view  ProductDetailList RENAME to productSummary;

/*Drop View*/ 
Drop view  ProductDetailList; 
GO/* Simple Views */
CREATE VIEW  simpleView
 as
Select City,Region ,title,(HireDate) from Employees where Title like '%Coordinator%' 
and region = 'WA' and City ='Seattle' ;
GO
GO/* Simple View2*/
CREATE VIEW customerInfo
AS
SELECT * FROM Customers WHERE Country = (SELECT Country FROM Customers WHERE CompanyName = 'Around the Horn');
 
/*Complex Views*/
GO /* Signals the start of view */
CREATE VIEW ProductDetailsList
AS
select distinct Top(8)p.ProductName ,p.UnitsInStock,p.UnitsOnOrder,p.UnitPrice,pm.Discount from Products p 
    INNER JOIN [Order Details] pm 
    ON p.ProductID = pm.ProductID
	where Discount <> 0
	order by UnitsOnOrder desc;
GO  
SELECT * FROM ProductDetailsList;  

GO /* Signals the start of the view */
CREATE VIEW TopOrderProduct
AS
SELECT ProductName,orderCount FROM Products join
(Select ProductID,	COUNT(*) As orderCount from [Order Details] Group by ProductID ) As orderCount
on Products.ProductID = orderCount.ProductID
where orderCount>50 ;
GO  
                       /* ----------------------------------------*/
 /* Clustered Index*/ 
 Execute sp_helpindex Products;
 create clustered index index_Orders on Orders (OrderDate desc,OrderID asc);
  /*Non Clustered Index*/ 
 create nonclustered index index_Productt on Products(unitPrice desc);
 create nonclustered index index_Product1 on Products(ProductName asc);
 /*For Droping Non Clustered Index*/ 
 drop index index_Productt on Products;
/* Create Index*/
CREATE INDEX idx_Product ON Products (ProductName);
/*ALTER INDEX*/
ALTER INDEX idx_Product ON Products REBUILD;
/*DROP INDEX*/
DROP INDEX idx_Product ON Products;


                          /* -----------------Task 6-----------------------*/
/*1 - Write a query to retrieve the names of all products that have been ordered more than 50 time.*/
SELECT ProductName,orderCount FROM Products join
(Select ProductID,	COUNT(*) As orderCount from [Order Details] Group by ProductID ) As orderCount
on Products.ProductID = orderCount.ProductID
where orderCount>50 ;

/*2 - Write a query to retrieve the names of all products that have been ordered at least once.*/
SELECT ProductName,orderCount FROM Products join
(Select ProductID,	COUNT(*) As orderCount from [Order Details] Group by ProductID ) As orderCount
on Products.ProductID = orderCount.ProductID
where orderCount>=1 ;

 /*3 - Create a view that shows the total revenue generated by each category.*/
select CategoryName, sum(Products.UnitPrice*quantity)  As Revenue
from [Order Details] join  Products 
on products.ProductID=[Order Details].ProductID
join Categories on Products.CategoryID =Categories.CategoryID 
group by CategoryName;

  /* -----------------Task 7--------------------*/
								   /*Conditional Control Statement Case ,IF*/
/*Example 1*/
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is more than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityDescription
FROM [Order Details];

/*Example 2*/
SELECT ProductName, UnitsOnOrder,UnitPrice,
CASE
    WHEN UnitsOnOrder >= 60 THEN 'High-Demand Product'
    WHEN UnitsInStock >= 20 THEN 'Average-Demand Product'
    ELSE 'Low Demand Product'
END AS PrductDemand
FROM Products;

/*Example 3*/
Select 
 CASE
WHEN UnitPrice >=180  THEN 'Expensive'
WHEN UnitPrice >=50 AND UnitPrice <180 THEN 'Reasonable'
Else 'Cheap'
END AS Price,
Min(UnitPrice) as MinimumPrice,
Max(UnitPrice) as MaximumPrice
from Products
Group By
CASE
WHEN UnitPrice >=180  THEN 'Expensive'
WHEN UnitPrice >=50 AND UnitPrice <180 THEN 'Reasonable'
Else 'Cheap'
END

/*Example 4*/
SELECT ContactName, City, Country,CompanyName
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);

/* Q1 */
SELECT ProductName,Products.UnitPrice,Discount,
case
when Products.UnitPrice>=50 then   Products.UnitPrice*0.1
ELSE Products.UnitPrice
End as Price
FROM  Products
join [Order Details] on [Order Details].ProductID=Products.ProductID;
/* Q2 */
SELECT ProductName,UnitPrice,ContactName,
       CASE WHEN 
	   ContactName  is null THEN 'Not  Available'
       END AS description
FROM   Products
right JOIN   Suppliers ON Products.SupplierID = Suppliers.SupplierID;
 