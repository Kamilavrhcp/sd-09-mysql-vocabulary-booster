-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, 
-- retorne a quantidade de empregos presentes em seu histórico
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

CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');

 -- This function has none of DETERMINISTIC, NO SQL, or READS SQL DATA in its declaration and binary logging is enabled (you *might* want to use the less safe log_bin_trust_function_creators variable)
