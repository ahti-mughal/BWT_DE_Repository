use Northwind

/* ==========================================================================
1 - Write a query to show a list of customers and their corresponding orders.
========================================================================== */

select contactname as Customers , Products.productname as Orders
from Customers
join orders on Customers.CustomerID = Orders.CustomerID 
join Order_Details on orders.OrderID = Order_Details.OrderID
join products on Order_Details.ProductID = Products.ProductID


/* ==========================================================================
2 - Write a query to show a list of employees and their corresponding managers:
========================================================================== */

SELECT e1.FirstName as employee,e2.FirstName as manager
FROM Employees e1
INNER JOIN Employees e2
ON e1.ReportsTo = e2.EmployeeID;

/* ==========================================================================
3 - Write a query to show a list of customers who have not placed any orders.
========================================================================== */

select contactname as Customers
from Customers
full outer join orders on Customers.CustomerID = Orders.CustomerID 
full outer join Order_Details on orders.OrderID = Order_Details.OrderID
full outer join products on Order_Details.ProductID = Products.ProductID
where ProductName is NULL ;


/* ==========================================================================
4 - Write a query to show a list of employees and their corresponding territories, 
including those employees who have no territories assigned.
========================================================================== */

select FirstName , t.TerritoryDescription
from Employees as e
full outer join EmployeeTerritories as et on e.EmployeeID = et.EmployeeID
left join Territories as t on t.TerritoryID = et.TerritoryID