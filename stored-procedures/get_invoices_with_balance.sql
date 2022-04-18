USE invoicing;

DROP PROCEDURE IF EXISTS get_invoices_with_balance;

DELIMITER $$
CREATE PROCEDURE get_invoices_with_balance()
BEGIN 
	SELECT * FROM invoices_with_balance;
END $$
DELIMITER ;