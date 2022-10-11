USE sql_store;

-- query 1
INSERT INTO customers (
	first_name, 
    last_name, 
    birth_date, 
    address,
    state, 
	city
) VALUE (
		'John',
        'Smith',
        '1990-01-01',
        'address',
        'CA',
        'City'
);

-- query 2
INSERT INTO customers VALUE (
		DEFAULT,
        'John',
        'Smith',
        '1990-01-01',
        NULL,
        'address',
        'CA',
        'City',
        DEFAULT
);