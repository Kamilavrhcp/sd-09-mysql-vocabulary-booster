/* Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que,
ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico */

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE numero_de_empregos INT;
SELECT COUNT(jh.JOB_ID) AS `Quantidade de empregos` FROM job_history AS jh
INNER JOIN employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email
LIMIT 1 INTO numero_de_empregos;
RETURN numero_de_empregos;
END $$
DELIMITER ;
