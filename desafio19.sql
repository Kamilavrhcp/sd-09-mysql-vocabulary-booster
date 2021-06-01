USE hr
DELIMITER $
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(emp.EMPLOYEE_ID) FROM hr.employees AS emp 
WHERE emp.HIRE_DATE LIKE CONCAT(ano, '-', IF (mes < 10, CONCAT(0, mes), mes), '%') INTO total;
RETURN total;
END$
DELIMITER ;
