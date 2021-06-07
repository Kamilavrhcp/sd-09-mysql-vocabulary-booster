USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mês_e_ano(month_param INT, year_param INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE employees_hired INT;
	SELECT COUNT(*) FROM employees
    WHERE YEAR(HIRE_DATE) = year_param AND MONTH(HIRE_DATE) = month_param
    INTO employees_hired;
    RETURN employees_hired;
END $$

DELIMITER ;
