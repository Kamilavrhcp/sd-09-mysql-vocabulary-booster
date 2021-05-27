/* Crie uma TRIGGER que, a cada nova inserção realizada na tabela orders, insira automaticamente
 a data atual na coluna OrderDate */
 
USE w3schools;
-- INSERT INTO orders (CustomerID, EmployeeID, OrderDate, ShipperID) VALUES (4, 2, NOW(), 2);
DELIMITER $$
 
CREATE TRIGGER trigger_order_insert
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = NOW();
END $$

DELIMITER ;
