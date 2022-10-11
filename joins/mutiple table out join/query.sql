USE sql_store;

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    sh.name AS shipper
FROM customers c
LEFT JOIN orders o
ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
ON sh.shipper_id = o.shipper_id;
 