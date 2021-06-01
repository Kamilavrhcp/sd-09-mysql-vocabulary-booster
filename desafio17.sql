USE w3schools;
DELIMITER $$
CREATE TRIGGER insereDataAoCriarPedido
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
INSERT INTO w3schools.orders(OrderDate) VALUES(DATE(NOW()));
END $$
DELIMITER ;
