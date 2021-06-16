USE hr;

DROP FUNCTION IF EXISTS exibir_quantidade_pessoas_contratadas_por_mes_e_ano;

DELIMITER //

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  RETURN (SELECT COUNT(*)
  FROM employees
  WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano);
END //

DELIMITER ;

SELECT EXIBIR_QUANTIDADE_PESSOAS_CONTRATADAS_POR_MES_E_ANO(6, 1987);
