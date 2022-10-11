USE sql_store;

SELECT * FROM products;

INSERT INTO products (
	name,
    quantity_in_stock, 
    unit_price
)
VALUES 
	('product 1', 4, 20.99),
    ('product 2', 4, 20.99),
    ('product 3', 4, 20.99);