USE sql_store;

-- Exercise 1
SELECT * 
FROM customers
WHERE first_name REGEXP 'elka|ambur';

-- Exercise 2
SELECT * 
FROM customers
WHERE last_name REGEXP 'ey$|on$';


-- Exercise 3
SELECT * 
FROM customers
WHERE last_name REGEXP '^my|se';


-- Exercise 4
SELECT * 
FROM customers
WHERE last_name REGEXP 'br|bu';
