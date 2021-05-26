DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL_Func VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE QTD INT;
SELECT COUNT(e.JOB_ID) as 'quantidade de empregos presentes em seu histórico ' FROM hr.employees as e
INNER JOIN hr.job_history as jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = EMAIL_Func
INTO QTD;
RETURN QTD;
END $$
DELIMITER ;
