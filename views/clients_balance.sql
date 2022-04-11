CREATE OR REPLACE VIEW clients_balance AS

SELECT 
client_id,
name,
SUM(invoice_total - payment_total) as balance
from clients
JOIN invoices USING (client_id)
GROUP BY client_id, name;