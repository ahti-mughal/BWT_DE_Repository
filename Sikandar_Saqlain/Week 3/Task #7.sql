--Case ... When
Select c.CustomerID, c.ContactName, COUNT(o.CustomerID) as NoOfOrders,
	(CASE 
		WHEN COUNT(o.CustomerID) > 20 THEN 'Eligible for 25% discount'
		WHEN COUNT(o.CustomerID) > 10 THEN 'Eligible for 20% discount'
		ELSE 'Eligible for 10% discount'
	END) as DiscountEligibility
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.ContactName

--IF ELSE
DECLARE @NoOfOrders INT;

SELECT @NoOfOrders =  COUNT(OrderID) FROM Orders

IF @NoOfOrders >= 100
	PRINT 'Monthly goal reached'


-------------- Queries -----------------------

--1 - Write a query to retrieve the product name, unit price, and discount for all orders in the "Order Details" table, and apply a discount of 10% if the unit price is greater than or equal to 50.
SELECT p.ProductName, p.UnitPrice, od.Discount, 
	(CASE
		WHEN p.UnitPrice >= 50 THEN (od.Quantity * p.UnitPrice) - (od.Quantity * p.UnitPrice * 0.1)
		ELSE (od.Quantity * p.UnitPrice)
	END) AS FinalPrice
FROM [Order Details] od
JOIN Products p ON od.ProductID = p.ProductID

--2 - Write a query to retrieve the product name, unit price, and supplier name for all products in the "Products" table, and apply a case statement to display "Not available" if the supplier name is null.
SELECT p.ProductName, p.UnitPrice, s.ContactName,
	(CASE
		WHEN s.ContactName IS NULL THEN 'Not Available'
		Else 'Available'
	END) AS Availibility
FROM Products p
JOIN Suppliers s on p.SupplierID = s.SupplierID


