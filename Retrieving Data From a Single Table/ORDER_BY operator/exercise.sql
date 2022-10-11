USE sql_store;

SELECT *, unit_price * quantity AS total_price
from order_items
WHERE order_id = 2
ORDER BY unit_price * quantity DESC;