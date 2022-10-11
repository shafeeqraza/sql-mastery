use sql_store;

-- query 1 
select *
from customers
where 
	birth_date > '1990-01-01' And points > 1000;
    

-- query 2
select *
from customers
where 
	birth_date > '1990-01-01' or points > 1000;
    

-- query 3
select *
from customers
where 
	birth_date > '1990-01-01' or 
    (points > 1000 AND state = 'VA');