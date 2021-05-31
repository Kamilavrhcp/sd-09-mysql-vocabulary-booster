USE hr

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE job_total INT;
SELECT 
    COUNT(j.EMPLOYEE_ID)
FROM
    job_history AS j
        JOIN
    hr.employees AS e ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    e.EMAIL = email INTO job_total;
RETURN job_total;
END $$

DELIMITER ;
