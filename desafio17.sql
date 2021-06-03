USE w3schools;
DELIMITER $$

CREATE TRIGGER adiciona_data_atual
  BEFORE INSERT ON orders
  FOR EACH ROW
  BEGIN
    SET NEW.OrderDate = CURRENT_DATE();
  END $$

DELIMITER ;
