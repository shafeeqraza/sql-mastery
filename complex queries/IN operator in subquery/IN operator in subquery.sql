USE sql_hr;
show tables;

SELECT * FROM employees
WHERE salary > (
	SELECT AVG(salary) 
    FROM employees
);