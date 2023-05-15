
select *
from [production].[products];
select *
from [sales].[order_items];
select *
from [sales].[orders];

select category_id, (
    case 
    when category_id = 1 then 'Delivered'
    when category_id = 2 then 'Accepted'
    when category_id = 3 then 'Rejected'
    when category_id = 4 then 'Dispatched'
    else 'Not Submitted'
    end
) as status
from [production].[products];


SELECT category_id, product_name
FROM [production].[products]
ORDER BY
(CASE
    WHEN category_id is not null then category_id
    ELSE product_name
END);

