USE sql_store;
-- PROBLEM: find the customers who order 'lettuce' (id = 3)

-- query 1
SELECT 
	customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
	SELECT customer_id FROM orders
    WHERE order_id IN (
		SELECT order_id FROM order_items
		WHERE product_id = 3
    )
);


-- query 2

SELECT 
	DISTINCT customer_id,
	first_name,
	last_name
FROM customers 
JOIN orders USING (customer_id)
JOIN order_items oi USING (order_id)
WHERE oi.product_id = 3