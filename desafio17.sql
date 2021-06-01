

DELIMITER $$
CREATE TRIGGER insereDataAoCriarPedido
AFTER INSERT ON w3schools.order
FOR EACH ROW
BEGIN
INSERT DATE(NOW()) ON w3schools.orders.orderDaTe
END $$
DELIMITER ;