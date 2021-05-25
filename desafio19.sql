USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hired_employees INT;
SELECT COUNT(*) FROM employees
WHERE MONTH(HIRE_DATE) = mes
AND YEAR(HIRE_DATE) = ano
INTO hired_employees;
RETURN hired_employees;
END$$
DELIMITER ;
