USE invoicing;
DROP TRIGGER IF EXISTS payment_after_delete;
DELIMITER $$

CREATE TRIGGER payment_after_delete
	AFTER DELETE ON payments
	FOR EACH ROW
BEGIN
	UPDATE invoices
    set payment_total = payment_total - OLD.amount
    where invoice_id = OLD.invoice_id;
    
    
    INSERT INTO payments_audit 
    VALUES (OLD.client_id, OLD.date, OLD.amount, 'Dwlete', NOW());
END $$

DELIMITER ;