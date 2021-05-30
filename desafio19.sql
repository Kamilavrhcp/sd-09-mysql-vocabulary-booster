DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(hire_month INT, hire_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_employees INT;
SELECT COUNT(*) 
FROM hr.employees 
WHERE MONTH(HIRE_DATE) = hire_month AND YEAR(HIRE_DATE) = hire_year 
INTO count_employees;
RETURN count_employees;
END $$
DELIMITER ;
