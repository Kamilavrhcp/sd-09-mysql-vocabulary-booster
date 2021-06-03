DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(`month` INT, `year` INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_pessoas_contratadas INT;
SELECT 
    COUNT(*)
FROM
    hr.employees
WHERE
    MONTH(HIRE_DATE) = `month`
        AND YEAR(HIRE_DATE) = `year` INTO quantidade_pessoas_contratadas;
  RETURN quantidade_pessoas_contratadas;
END $$

DELIMITER ;
