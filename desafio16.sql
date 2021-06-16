USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(v_email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_empregos INT;
SELECT COUNT(JOB_ID) INTO qtd_empregos
FROM hr.employees
WHERE JOB_ID in (
SELECT JOB_ID
FROM hr.employees
WHERE EMAIL = v_email
); 
RETURN qtd_empregos;
END $$
DELIMITER ;
