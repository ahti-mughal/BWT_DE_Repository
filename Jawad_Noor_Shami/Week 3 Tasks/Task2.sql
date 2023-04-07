select * from Products;
/*  Retrieve the product name, unit price, and 
units in stock of all products that cost less than $20,
ordered by product name.
*/
select ProductName,UnitPrice,UnitsInStock
from products
where UnitPrice < 20
order by ProductName


/*   Retrieve the order ID, customer ID, 
and order date of all orders that do not have a customer ID,
ordered by order date.

*/
select * from Orders;

select orderID,CustomerID,OrderDate 
from Orders
where CustomerID is null
order by OrderDate

/*   Retrieve the category names of all products, 
as well as the countries to which orders have been shipped,
without any duplicates.


*/

select distinct CategoryName ,shipCountry 
from Categories,Orders,Products
where Categories.CategoryID=Products.CategoryID
and ShipCountry is not null








