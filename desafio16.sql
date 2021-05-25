USE hr
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE average INT;
  SELECT COUNT(E.`EMPLOYEE_ID`) AS `total_empregos` FROM hr.employees AS E
  INNER JOIN hr.job_history AS JH ON JH.`EMPLOYEE_ID` = E.`EMPLOYEE_ID`
  AND E.`EMAIL` = email INTO average;
  RETURN average;
END $$
DELIMITER ;
