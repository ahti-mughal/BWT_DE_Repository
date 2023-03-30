/* 27_March_2023 Week_3 Task # 2*/

USE Northwind

/*Retrieve the product name, unit price, and units in stock of all products that cost less than $20, ordered by product name*/
Select ProductName,UnitPrice,UnitsInStock
from Products Where UnitPrice < 20
Order by ProductName

/*Retrieve the order ID, customer ID, and order date of all orders that do not have a customer ID, ordered by order date.*/
Select * from Orders
Select OrderID, CustomerID, OrderDate
from Orders Where CustomerID Is Null
Order By OrderDate

/*Retrieve the category names of all products, as well as the countries to which orders have been shipped, without any duplicates.*/

Select Distinct  CategoryName,ShipCountry
from ((Products
Inner Join Categories ON Products.CategoryID = Categories.CategoryID)
Inner Join [Order Details] ON [Order Details].ProductID = Products.ProductID)
Inner join Orders ON Orders.OrderID = [Order Details].OrderID