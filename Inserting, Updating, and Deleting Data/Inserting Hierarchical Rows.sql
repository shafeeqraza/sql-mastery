USE sql_store;

INSERT INTO orders (
	customer_id, 
    order_date,
    status
) VALUES (1, '2019-01-01', 1);

INSERT INTO 
	order_items 
VALUES 
(
	LAST_INSERT_ID(),
    2,
    1,
    2.90
), 
(
LAST_INSERT_ID(),
    3,
    1,
    3.90
);