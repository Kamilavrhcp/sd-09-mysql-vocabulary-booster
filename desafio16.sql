USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE jobs_history DOUBLE;
SELECT 
    COUNT(employee_id)
FROM
    hr.job_history
WHERE
    employee_id IN (SELECT 
            employee_id
        FROM
            hr.employees AS e
        WHERE
            e.email = email) INTO jobs_history;
    RETURN jobs_history;
END $$

DELIMITER ;
