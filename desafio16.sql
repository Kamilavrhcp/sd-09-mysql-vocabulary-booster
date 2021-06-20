USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailDoFuncionario VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE historico INT;
SELECT COUNT(j.EMPLOYEE_ID)
FROM hr.job_history AS j
INNER JOIN hr.employees AS e ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = emailDoFuncionario
INTO historico;
RETURN historico;
END $$
DELIMITER ;
