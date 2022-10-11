USE sql_store;

START TRANSACTION;

INSERT INTO orders (customer_id, order_date, status) VALUE(1, '2019-01-01', 1);

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUE(LAST_INSERT_ID(), 1, 1, 2.00);

COMMIT;