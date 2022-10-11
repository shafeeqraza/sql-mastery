use sql_invoicing;

SELECT *
FROM clients
WHERE client_id NOT IN (
	SELECT DISTINCT client_id FROM invoices
);

SELECT 
		client_id,
        name,
        invoice_id
FROM clients c
LEFT JOIN invoices i
USING (client_id)
WHERE i.invoice_id IS NULL;