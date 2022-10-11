USE sql_store;
-- query 1
SELECT
	c.customer_id,
    c.first_name AS customer,
    p.name AS product
FROM customers c
CROSS JOIN products p
ORDER BY c.customer_id;

--  query 2
SELECT
	c.customer_id,
    c.first_name AS customer,
    p.name AS product
FROM customers c, products p