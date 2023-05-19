--Single row sub-queries
Select OrderID, UnitPrice From [Order Details]
Where UnitPrice > (Select AVG(UnitPrice) From [Order Details])

--List every order with the percentage of total sales for that sale
SELECT ProductID, Quantity AS Number_Sold, 
		(SELECT SUM(Quantity) FROM [Order Details]) AS Total_Sold, 
		((CONVERT(Money, Quantity) / (SELECT SUM(Quantity) FROM [Order Details])) * 100)  AS Percent_Of_Sales 
FROM [Order Details] 
order by ProductID


--Multiple row sub-queries

--Select all comanies who have made an order after 1995
SELECT CompanyName  
FROM Customers  
WHERE CustomerID IN (SELECT CustomerID FROM Orders WHERE OrderDate > '1/1/95')

--Correlated Sub queries

--Select customers who ordered more than 20 items of product number 23 on a single order.
SELECT OrderID, CustomerID  FROM Orders o  
WHERE (SELECT Quantity FROM [Order Details] od WHERE o.OrderID = od.OrderID AND od.ProductID = 23) > 20


--Select list of products with their largest sale quantity ever
Select Distinct p.ProductName, od1.Quantity FROM [Order Details] od1
JOIN Products p on od1.ProductID = p.ProductID 
Where Quantity = (Select Max(Quantity) From [Order Details] od2 where od1.ProductID = od2.ProductID)

GO

----------------------- Views ---------------------------

--Create a view
Create view customer_total_spent as
	Select c.ContactName, Cast(SUM(od.Quantity * Cast(od.UnitPrice as float) - (od.Quantity * Cast(od.UnitPrice as float) * od.Discount / 100)) as bigint) as TotalSpent from Customers c
	Join Orders o on o.CustomerID = c.CustomerID
	Join [Order Details] od on o.OrderID = od.OrderID
	Group by c.ContactName
GO

Select * from customer_total_spent
Order By ContactName

Drop view customer_total_spent

Alter view customer_total_spent rename to customer_expenditure



