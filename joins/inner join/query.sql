USE sql_store;

SELECT c.customer_id, first_name, last_name, order_id
FROM orders o
INNER JOIN customers c
ON c.customer_id = o.customer_id;