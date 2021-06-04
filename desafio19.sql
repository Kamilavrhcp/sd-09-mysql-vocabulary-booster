USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(inputMonth INT, inputYear INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE totalOfPeopleHired INT;
  SELECT COUNT(EMPLOYEE_ID)
  FROM employees
  WHERE MONTH(HIRE_DATE) = inputMonth AND YEAR(HIRE_DATE) = inputYear
  INTO totalOfPeopleHired;
  RETURN totalOfPeopleHired;
END $$
DELIMITER ;
