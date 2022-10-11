USE sql_store;
-- query 1

SELECT 
	sh.shipper_id,
    sh.name AS shipper,
    p.name AS product
FROM shippers sh
CROSS JOIN products p
ORDER BY sh.shipper_id;

--  query 2
SELECT 
	sh.shipper_id,
    sh.name AS shipper,
    p.name AS product
FROM shippers sh, products p
ORDER BY sh.shipper_id;