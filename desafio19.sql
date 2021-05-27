USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(`month` INT, `year` INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_contracted INT;
SELECT COUNT(*)
FROM employees
WHERE MONTH(hire_date) = `month` AND YEAR(hire_date) = `year` INTO total_contracted;
RETURN total_contracted;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987) AS total;
