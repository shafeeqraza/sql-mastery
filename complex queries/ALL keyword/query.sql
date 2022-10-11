USE sql_invoicing;

-- select invoices larger then all invoinces of client 3

SELECT 
	* 
FROM invoices 
WHERE invoice_total > (
	SELECT 
		MAX(invoice_total)
	FROM invoices 
	WHERE client_id = 3
);

SELECT 
	* 
FROM invoices 
WHERE invoice_total > ALL (
	SELECT 
		invoice_total 
	FROM invoices 
	WHERE client_id = 3
);