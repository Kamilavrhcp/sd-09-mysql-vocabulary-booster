USE w3schools;
DELIMITER $$
CREATE TRIGGER register_order_date_log
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$
DELIMITER ;