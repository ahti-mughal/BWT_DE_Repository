select *
from [sales].[customers]

select *
from [sales].[customers]
where phone in (
    select [sales].[customers].phone
    from [sales].[customers]
    where phone is not null
    ) and [sales].[customers].[state] like 'NY'


select product_name, model_year, list_price,
    ( Select AVG(list_price)
    from [production].[products] ) as Avg_list_price
from [production].[products]


select product_name, model_year, list_price, AVG(list_price) 
        over() as Avg_list_price
from [production].[products]

select product_name, model_year, list_price, AVG(list_price)  as Avg_list_price
from [production].[products]
group by product_name, model_year, list_price
order  by product_name desc

select first_name, last_name, zip_code, AVG(zip_code)
from [sales].[customers]



select *
from [production].[brands]
select *
from [production].[products]
select *
from [production].[categories]
select *
from [production].[stocks]
select *
from [sales].[customers]
select *
from [sales].[order_items]
select *
from [sales].[orders]
select *
from [sales].[staffs]
select *
from [sales].[stores]

Create view product_details
as
    SELECT product_name , brand_name, category_name, model_year, list_price
    from [production].[products]
        left join [production].[brands]
        on [production].[brands].[brand_id] = [production].[products].[brand_id]
        left join [production].[categories]
        on [production].[categories].[category_id] = [production].[products].[category_id]


SELECT *
from [sales].[customers]
where phone is not null

SELECT *
from [dbo].[OrderStatus]
insert into [dbo].[OrderStatus]
values
    (
        2, 'Cancelled'
),
    (
        3, 'Accepted'
),
    (
        4, 'Dispatch'
),
    (
        5, 'Delivered'
)

Drop view if EXISTS order_summary
Create view order_summary
as
    SELECT [sales].[customers].customer_id, first_name, last_name, phone, city, [dbo].[OrderStatus].order_status, shipped_date, product_name, brand_name, category_name, model_year, [production].[products].list_price
    from [sales].[customers]
        left join [sales].[orders]
        on [sales].[customers].customer_id = [sales].[orders].customer_id
        left join [sales].[order_items]
        on [sales].[order_items].[order_id] = [sales].[orders].order_id
        left join [production].[products]
        on [production].[products].product_id = [sales].[order_items].product_id
        left join [production].[brands]
        on [production].[products].brand_id = [production].[brands].brand_id
        left join [production].[categories]
        on [production].[products].category_id = [production].[categories].category_id
        left join [dbo].[OrderStatus]
        on [dbo].[OrderStatus].order_status_id = [sales].[orders].order_status
    where phone is not null and shipped_date is not null
    order by shipped_date desc;

-- , (select  COUNT(store_id) from [production].[stocks] group by store_id) as Number_of_products 

Create view store_details
as
    select store_name, product_name, quantity
    from [production].[stocks]
        inner join [production].[products]
        on [production].[products].[product_id] = [production].[stocks].product_id
        inner join [sales].[stores]
        on [sales].[stores].[store_id] = [production].[stocks].store_id
    group by store_name, product_name, quantity;


select *
from store_details;


select *
from order_summary
