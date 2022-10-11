USE sql_store;
-- query 1
SELECT first_name FROM customers 
UNION
SELECT name FROM shippers;

--  query 2
SELECT 
	order_id,
    order_date,
    "Active" AS Status
FROM orders 
WHERE 
	order_date >= '2019-01-01'
UNION
SELECT 
	order_id,
    order_date,
    "Archieve" AS Status
FROM orders 
WHERE 
	order_date < '2019-01-01';