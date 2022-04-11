DELIMITER $$

DROP PROCEDURE IF EXISTS get_invoices_with_balance;
CREATE PROCEDURE get_invoices_with_balance()
BEGIN 
	SELECT * FROM invoices_with_balance;
END$$
DELIMITER ;