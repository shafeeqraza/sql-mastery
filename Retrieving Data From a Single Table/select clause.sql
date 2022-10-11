use sql_inventory;

select 
	name, 
    unit_price, 
    unit_price * 1.1 as new_unit_price 
from products;
