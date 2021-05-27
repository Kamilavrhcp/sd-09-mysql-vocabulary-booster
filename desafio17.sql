USE w3schools;

DELIMITER $$
CREATE TRIGGER atualiza_insert_orderdate
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
  SET NEW.OrderDate = NOW();
END

DELIMITER $$ ;
