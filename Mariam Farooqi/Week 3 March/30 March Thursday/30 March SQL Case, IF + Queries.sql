
		
												Task # 7

/*Practice following:

1 - Conditional Control Statements:*/

     • Case
     • If


	 select productid

	 case when quantity>10 then 'ok'
	 else 'nothing'
	 end as result
	 from [Order Details];



							/*Write the following queries using Northwind DB:

		1 - Write a query to retrieve the product name, unit price, 
		and discount for all orders in the "Order Details" table, 
		and apply a discount of 10% if the unit price is greater than or equal to 50.*/


		select productname, unitprice, discount,

		CASE WHEN UnitPrice =50 THEN (UnitPrice * 0.9)
		     WHEN UNITPRICE>50 THEN (UnitPrice * 0.9)
			 else 'no disocunt'
		end as result

			 FROM [Order Details]

			 inner join 
			 products 
			 on [Order Details].ProductID=Products.ProductID;

			 

		/*2 - Write a query to retrieve the product name, 
		unit price, and supplier name for all products 
		in the "Products" table, and apply a case statement 
		to display "Not available" if the supplier name is null.*/

		select productname , unitprice , ContactName,

		 CASE WHEN CONTACTNAME=NULL THEN 'PRODUCT NOT AVAILABLE'
		ELSE 'AVAILABLE'
		END AS RESULT

		from Suppliers
		inner join 
		Products
		on Suppliers.SupplierID=Products.SupplierID
	
	SELECT * FROM Suppliers;
	   
