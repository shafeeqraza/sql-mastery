USE sql_store;
-- query 1
SELECT *
FROM customers
WHERE state IN ('VA', 'FL', 'GA');

-- query 2
SELECT *
FROM customers
WHERE state NOT IN ('VA', 'FL', 'GA');