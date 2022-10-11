use sql_invoicing;
--  find the client who doesnot have invoice;

SELECT *
FROM clients
WHERE client_id NOT IN (
	SELECT DISTINCT client_id FROM invoices
);

