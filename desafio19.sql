USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hide_month INT, hide_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity_employees INT;
SELECT COUNT(*) FROM employees
WHERE MONTH(HIRE_DATE) = hide_month AND YEAR(HIRE_DATE) = hide_year
INTO quantity_employees;
RETURN quantity_employees;
END $$

DELIMITER ;
