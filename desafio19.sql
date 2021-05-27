USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE numero_de_pessoas_contratadas INT;
    SELECT 
    COUNT(*)
FROM
    hr.employees AS e
WHERE
    MONTH(e.HIRE_DATE) = mes
        AND YEAR(e.HIRE_DATE) = ano INTO numero_de_pessoas_contratadas;
    RETURN numero_de_pessoas_contratadas;
END $$

DELIMITER ;
