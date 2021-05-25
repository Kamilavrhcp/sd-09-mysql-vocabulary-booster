USE w3schools;
DELIMITER $$

CREATE TRIGGER update_order_date
	BEFORE INSERT ON w3schools.orders
	FOR EACH ROW
BEGIN
	SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
