USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade_empregos INT;
SELECT
    COUNT(*)
FROM
    hr.job_history AS h
        JOIN
    hr.employees AS e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    e.EMAIL = email INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$
DELIMITER ;
