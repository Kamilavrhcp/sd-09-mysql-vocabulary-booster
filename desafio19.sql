USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quant_contratacoes INT;
	SELECT 
		COUNT(*)
	FROM
		hr.employees
	WHERE CONCAT(MONTH(HIRE_DATE),'-',YEAR(HIRE_DATE)) = CONCAT(mes,'-',ano)
	INTO quant_contratacoes;
	RETURN quant_contratacoes;
END $$

DELIMITER ;
