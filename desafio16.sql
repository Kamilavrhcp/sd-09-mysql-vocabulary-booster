/* 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.

Use o banco hr como referência

Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR". */

USE hr;
DELIMITER $$
-- DROP FUNCTION hr.buscar_quantidade_de_empregos_por_funcionario $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) AS total_empregos
  FROM job_history
  WHERE EMPLOYEE_ID IN (SELECT EMPLOYEE_ID FROM employees WHERE EMAIL = email)
  INTO total;
  RETURN total;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
