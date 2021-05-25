delimiter $$ CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(
  employeeEmail VARCHAR(300)
) RETURNS INT READS SQL DATA BEGIN DECLARE total_empregos INT;
SELECT 
  count(*) AS total_empregos 
FROM 
  hr.job_history AS job_history
  INNER JOIN hr.employees AS employee ON employee.EMPLOYEE_ID = job_history.EMPLOYEE_ID 
WHERE 
  EMAIL = employeeEmail INTO total_empregos;
RETURN total_empregos;
END $$
