USE `invoicing`;

DROP FUNCTION IF EXISTS GET_RISK_FACTOR_BY_CLIENT;
DELIMITER $$
CREATE FUNCTION GET_RISK_FACTOR_BY_CLIENT (client_id INT)
RETURNS INTEGER
READS SQL DATA
BEGIN 
	DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
	
	DECLARE invoices_total DECIMAL(9,2);
	
	DECLARE invoices_count INT;
	
	SELECT COUNT(*), SUM(invoice_total)
	INTO invoices_count, invoices_total
	FROM invoices i
	WHERE i.client_id = client_id;
	
	SET risk_factor = invoices_total / invoices_count * 5;

	RETURN IFNULL(risk_factor, 0);
END $$

DELIMITER ;