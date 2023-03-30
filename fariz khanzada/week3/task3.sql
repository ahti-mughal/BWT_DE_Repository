SELECT Customers.CustomerID, Customers.CompanyName, Orders.OrderID
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerID, Customers.CompanyName, Orders.OrderID
FROM Customers
LEFT OUTER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerID, Customers.CompanyName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
