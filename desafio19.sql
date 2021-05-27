USE hr;
DELIMITER $$

CREATE FUNCTION
  exibir_quantidade_pessoas_contratadas_por_mes_e_ano
  (param_month SMALLINT, param_year INTEGER)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM hr.employees
    WHERE MONTH(HIRE_DATE) = param_month
    AND YEAR(HIRE_DATE) = param_year;
  RETURN total;
END $$

DELIMITER ;
