USE hr;

DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(`month` INT, `year` INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE hired_employees INT;
SELECT COUNT(EMPLOYEE_ID)
FROM hr.employees e
WHERE MONTH(e.HIRE_DATE) = `month` AND YEAR(e.HIRE_DATE) = `YEAR` INTO hired_employees;
RETURN hired_employees;
END $$

DELIMITER ;

SELECT * FROM hr.employees;
