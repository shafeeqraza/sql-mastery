USE sql_hr;

SELECT 
	e.first_name as employee_name,
    es.first_name as manager
FROM employees e
JOIN employees es
ON e.reports_to = es.employee_id;