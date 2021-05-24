-- 19 - Crie uma função chamada exibir_quantidade_pessoas_contratadas_por_mes_e_ano no banco de dados hr que,
-- dados o mês e ano como parâmetros nessa ordem, retorna a quantidade de pessoas funcionárias que foram contratadas nesse mês e ano
USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (inputMonth INT, inputYear INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantity INT;
    SELECT COUNT(*) FROM hr.employees as e
    WHERE YEAR(e.HIRE_DATE) = inputYear AND MONTH(e.HIRE_DATE) = inputMonth
    INTO quantity;
    RETURN quantity;
END $$

DELIMITER ;
