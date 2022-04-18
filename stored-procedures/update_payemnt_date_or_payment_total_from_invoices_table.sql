
use invoicing;

DROP PROCEDURE IF EXISTS update_payemnt_date_or_payment_total_from_invoices_table;

DELIMITER $$

CREATE PROCEDURE update_payemnt_date_or_payment_total_from_invoices_table
(
	invoice_id INT,
	payment_total DECIMAL(9, 2),
	payment_date Date
)
BEGIN

	IF payment_total <= 0 THEN
		SIGNAL SQLSTATE '22003' SET MESSAGE_TEXT = "Invalid payment amount";
	END IF;
	UPDATE invoices i 
	SET 
		i.payment_total = IFNULL(payment_total, i.payment_total),
		i.payment_date = IFNULL(payment_date, i.payment_date)
	WHERE i.invoice_id = invoice_id;
			
END $$

DELIMITER ;