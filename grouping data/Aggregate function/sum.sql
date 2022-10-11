USE sql_invoicing;
SELECT * from invoices;

SELECT 
	'First half of 219' as date_range,
    SUM(invoice_total) as total_sales,
    SUM(payment_total) as total_payments,
	SUM(invoice_total) - SUM(payment_total) as 'what_we_expect'
FROM invoices
WHERE payment_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION 
SELECT 
	'Second half of 219' as date_range,
    SUM(invoice_total) as total_sales,
    SUM(payment_total) as total_payments,
	SUM(invoice_total) - SUM(payment_total) as 'what_we_expect'
FROM invoices
WHERE payment_date BETWEEN '2019-07-01' AND '2019-12-31'
;