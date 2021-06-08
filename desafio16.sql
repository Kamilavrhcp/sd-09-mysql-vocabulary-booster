DELIMITER $$
CREATE FUNCTION `buscar_quantidade_de_empregos_por_funcionario`(IN email VARCHAR(100))
BEGIN
SELECT COUNT(t1.EMPLOYEE_ID) AS total_empregos FROM hr.job_history AS t1
INNER JOIN hr.employees AS t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE t2.EMAIL = email;
END $$
DELIMITER ;
