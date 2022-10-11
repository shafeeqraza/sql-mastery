USE sql_store;

SELECT order_id, p.product_id, p.name, oi.quantity, oi.unit_price
FROM order_items oi
INNER JOIN products p
ON p.product_id = oi.product_id;