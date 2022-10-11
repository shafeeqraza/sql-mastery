USE sql_hr;
-- for each employee 
	-- calculate the avg salary for employee.office
	--  return the employee if salary > avg

SELECT * FROM employees e
WHERE salary > (
	SELECT 
		AVG(salary) 
	FROM employees
    WHERE office_id = e.office_id
);