CREATE OR REPLACE VIEW sales_by_clients AS 

SELECT
  `c`.`client_id` AS `client_id`,
  `c`.`name`      AS `name`,
  SUM(`i`.`invoice_total`) AS `total_sales`
FROM (`clients` `c`
   JOIN `invoices` `i`
     ON (`c`.`client_id` = `i`.`client_id`))
GROUP BY `c`.`client_id`,`c`.`name`;