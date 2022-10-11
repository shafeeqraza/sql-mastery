-- Example 1
USE sql_store;

SELECT order_id, p.product_id, p.name, oi.quantity, oi.unit_price
FROM order_items oi
INNER JOIN sql_inventory.products p
ON p.product_id = oi.product_id;


-- Example 2
USE sql_inventory;

SELECT order_id, p.product_id, p.name, oi.quantity, oi.unit_price
FROM sql_store.order_items oi
INNER JOIN sql_inventory.products p
ON p.product_id = oi.product_id;