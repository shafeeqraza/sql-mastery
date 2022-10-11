USE sql_store;

-- query 1 get rows where last_name ends with Y/y
SELECT *
FROM customers
WHERE last_name LIKE '%y';


-- query 2 get rows where last_name starts with B/b
SELECT *
FROM customers
WHERE last_name LIKE 'b%';



-- query 3 get rows where last_name have 2 charactors and end with y
SELECT *
FROM customers
WHERE last_name LIKE '_y';



-- query 4 get rows where last_name have 6 charactors and end with y
SELECT *
FROM customers 
WHERE last_name LIKE '_____y';



-- query 5 get rows where last_name have 6 charactors which starts with b and end with y
SELECT *
FROM customers 
WHERE last_name LIKE 'b____y';