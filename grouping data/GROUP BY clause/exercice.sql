USE sql_invoicing;

SELECT 
	date,
    pm.name,
    SUM(amount)
FROM payments p
JOIN payment_methods pm
ON pm.payment_method_id = p.payment_method
GROUP BY payment_method, date
ORDER BY date;