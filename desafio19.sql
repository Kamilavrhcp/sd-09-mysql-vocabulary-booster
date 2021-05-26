USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(selMonth INT, selYear INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(*) FROM employees
WHERE MONTH(HIRE_DATE) = selMonth AND YEAR(HIRE_DATE) = selYear
INTO result;
RETURN result;
END $$

DELIMITER ;
