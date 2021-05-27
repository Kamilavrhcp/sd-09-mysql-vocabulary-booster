USE w3schools;

DELIMITER $$
CREATE TRIGGER tr_insert_current_order_date
  BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
  SET NEW.OrderDate = CURRENT_DATE();
END $$

DELIMITER ;
