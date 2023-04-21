select *
from [sales].[customers];

select *
from [sales].[orders];

-- 1 - Write a query to show a list of customers and their corresponding orders.

select [sales].[customers].first_name, [sales].[customers].last_name,
    [sales].[orders].order_id, [sales].[orders].[order_date],
    [sales].[orders].shipped_date
from [sales].[customers]
    left join [sales].[orders]
    on [sales].[customers].customer_id = [sales].[orders].[customer_id];

-- 2 - Write a query to show a list of employees and their corresponding managers:

SELECT [sales].[staffs].first_name, [sales].[staffs].last_name
FROM [sales].[staffs]
    LEFT JOIN [sales].[manager]
    on [sales].[staffs].manager_id = [sales].[manager].Id;

-- 3 - Write a query to show a list of customers who have not placed any orders.

SELECT *
FROM [sales].[customers]
WHERE [sales].[customers].customer_id 
NOT IN (SELECT [sales].[customers].customer_id
FROM [sales].[orders]);

-- 4 - Write a query to show a list of employees and their corresponding territories, including those employees who have no territories assigned.

select *
from[sales].[staffs];

select *
from [sales].[staffs]
    left join [sales].[stores]
    on [sales].[stores].store_id = [sales].[staffs].store_id
where [sales].[staffs].store_id is null;
