USE hr
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN e CHAR(100))
BEGIN
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
DEPARTMENT_NAME AS 'Departamento',
JOB_TITLE AS 'Cargo' FROM hr.employees AS E
INNER JOIN hr.job_history AS H ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
INNER JOIN hr.departments AS D ON H.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN hr.jobs AS J ON H.JOB_ID = J.JOB_ID
WHERE EMAIL = e order by 2, 3;
END $$
DELIMITER ;
