USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month_param INT, year_param INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE number_of_hired INT;
    SELECT COUNT(*) 
    FROM hr.employees AS e
    WHERE MONTH(e.HIRE_DATE) = month_param AND YEAR(e.HIRE_DATE) = year_param INTO number_of_hired;
    RETURN number_of_hired;
END $$

DELIMITER ;

SELECT EXIBIR_QUANTIDADE_PESSOAS_CONTRATADAS_POR_MES_E_ANO(6, 1987);
