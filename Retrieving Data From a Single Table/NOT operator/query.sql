
USE sql_store;

-- query 1
SELECT * FROM customers WHERE phone is NULL;


-- query 2
SELECT * FROM customers WHERE phone IS NOT NULL;