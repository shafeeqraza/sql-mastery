USE sql_store;

-- query 1 get all the rows from the left table (customers) wether the ON condition pass or not
SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date	
FROM 
	customers c
LEFT JOIN 
	orders o
ON 
	o.customer_id = c.customer_id;
    

-- query 2 get all the rows from the right table (orders) wether the ON condition pass or not
SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    o.order_id,
    o.order_date	
FROM 
	customers c
RIGHT JOIN 
	orders o
ON 
	o.customer_id = c.customer_id