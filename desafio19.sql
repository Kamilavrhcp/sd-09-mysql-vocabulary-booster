USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mth INT, yr INT)
RETURNS INT READS SQL DATA 
BEGIN
DECLARE total_employees INT;
SELECT 
    COUNT(*)
FROM
    hr.employees
WHERE
    MONTH(HIRE_DATE) = mth
        AND YEAR(HIRE_DATE) = yr INTO total_employees;
    RETURN total_employees;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
