use sql_store;

select * 
	from order_items 
where 
	order_id = 6
    AND 
(unit_price * quantity) > 30;