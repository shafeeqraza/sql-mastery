USE sql_store;

-- query 1
SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM 
customers c
JOIN orders o 
ON o.customer_id = c.customer_id;

-- query 2 implicit join syntax
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date
FROM
	customers c, orders o
WHERE 
	o.customer_id = c.customer_id
		