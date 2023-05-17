SELECT product_name,
    CASE 
        WHEN units_in_stock > 0 THEN 'In Stock'
        WHEN units_on_order > 0 THEN 'On Order'
        ELSE 'Out of Stock'
    END AS stock_status
FROM products;

CREATE PROCEDURE update_product_quantity (
    IN product_id INT,
    IN quantity INT
)
BEGIN
    IF quantity > 0 THEN
        UPDATE products
        SET units_in_stock = units_in_stock + quantity
        WHERE product_id = product_id;
    ELSE
        UPDATE products
        SET units_on_order = units_on_order - quantity
        WHERE product_id = product_id;
    END IF;
END;
