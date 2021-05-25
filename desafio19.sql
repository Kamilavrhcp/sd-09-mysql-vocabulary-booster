USE hr;
DELIMITER //

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(
  month INT,
  year INT
)
RETURNS INT READS SQL DATA
BEGIN

  DECLARE employees INT;
  SELECT
    COUNT(e.EMPLOYEE_ID)
  FROM
    hr.employees e
  WHERE
    YEAR(e.HIRE_DATE) = year AND MONTH(e.HIRE_DATE) = month
  INTO employees;
  RETURN employees;

END //

DELIMITER  ;
