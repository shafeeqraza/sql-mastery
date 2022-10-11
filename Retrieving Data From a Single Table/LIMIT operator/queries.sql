USE sql_store;

-- query 1 take first 3 records
SELECT * 
FROM customers
LIMIT 3;


-- query 2 first ingore 6 and take 3 records
SELECT * 
FROM customers
LIMIT 6, 3;