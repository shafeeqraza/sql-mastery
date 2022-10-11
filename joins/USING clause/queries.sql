USE sql_store;

-- query 1
SELECT 
	c.customer_id,
    c.first_name,
	o.order_id
FROM customers c
JOIN orders o
USING (customer_Id);


-- query 2
SELECT 
	c.customer_id,
    c.first_name,
	o.order_id
FROM customers c
LEFT JOIN orders o
USING (customer_Id);



-- query 3
SELECT 
	c.customer_id,
    c.first_name,
	o.order_id,
	sh.name as shipper
FROM customers c
LEFT JOIN orders o
USING (customer_Id)
LEFT JOIN shippers sh
USING (shipper_id);


-- query 4

SELECT 
	oi.order_id,
    oi.product_id,
    oin.note
FROM order_items oi
RIGHT JOIN order_item_notes oin
USING (order_id, product_id);