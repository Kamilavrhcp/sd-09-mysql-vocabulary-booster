USE w3schools;

DELIMITER $$

CREATE TRIGGER InseserirDataAutomaticamente
	BEFORE UPDATE ON orders
    FOR EACH ROW
BEGIN
	SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
