USE sql_store;

-- EXERCISE 1
SELECT * from customers 
WHERE phone LIKE '%9';



-- EXERCISE 2
SELECT * from customers 
WHERE 
	address LIKE '%trail%' OR 
    address LIKE '%avenue%';