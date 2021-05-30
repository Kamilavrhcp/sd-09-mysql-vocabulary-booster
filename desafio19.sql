USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (input_month INT, input_year INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(*) FROM hr.employees
WHERE HIRE_DATE LIKE CONCAT(input_year, '-', IF (input_month < 10, CONCAT(0, input_month), input_month), '%') INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
