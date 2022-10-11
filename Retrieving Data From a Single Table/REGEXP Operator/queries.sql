USE sql_store;

-- query 1 gets all the rows which contain E/e in their last_name
SELECT *
FROM customers
WHERE last_name REGEXP 'e';


-- query 2 gets all the rows which starts with B/b in their last_name;
SELECT *
FROM customers
WHERE last_name REGEXP '^b';


-- query 3 gets all the rows which ends with Y/y in their last_name;
SELECT *
FROM customers
WHERE last_name REGEXP 'y$';


-- query 4 gets all the rows which contains either 'mac', 'brush', or 'rose' their last_name;
SELECT *
FROM customers
WHERE last_name REGEXP 'mac|brush|rose';



-- query 5 gets all the rows which ends with Y/y in their last_name;
SELECT *
FROM customers
WHERE last_name REGEXP 'y$';

-- query 6 gets all the rows which contains E/e but before 'e' it contain charactors between a to h in their last_name;
SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e';


-- Summary
-- ^ for start
-- $ for end
-- | for logical OR operator
-- [] for range 