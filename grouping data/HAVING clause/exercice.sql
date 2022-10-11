-- PROBLEM:  
	-- Get the customers
		-- located in Virginia
		-- who spent more the $100

USE sql_store;

SELECT 
	o.customer_id,
    SUM(oi.unit_price * oi.quantity) as spent_amount
FROM orders o
JOIN order_items oi
USING (order_id)
JOIN customers c
using (customer_id)
WHERE c.state = 'VA'
GROUP BY o.customer_id
HAVING spent_amount > 100;