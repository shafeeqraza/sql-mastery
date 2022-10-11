use sql_invoicing;

SELECT 
	pm.name AS payment_method,
	SUM(p.amount) as total
FROM payment_methods pm 
JOIN payments p
ON p.payment_method = pm.payment_method_id
GROUP BY pm.name WITH ROLLUP; 