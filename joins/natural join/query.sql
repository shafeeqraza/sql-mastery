USE sql_store;

SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
FROM customers c
NATURAL JOIN orders o;