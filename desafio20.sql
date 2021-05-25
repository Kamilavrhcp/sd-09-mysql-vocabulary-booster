DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
d.DEPARTMENT_NAME AS `Departamento`,
j.JOB_TITLE AS `Cargo`
FROM
hr.employees AS e, hr.departments d, hr.job_history AS jh, hr.jobs AS j
WHERE
jh.EMPLOYEE_ID = e.EMPLOYEE_ID
AND
jh.DEPARTMENT_ID = d.DEPARTMENT_ID
AND
jh.JOB_ID = j.JOB_ID
AND
e.EMAIL = email
ORDER BY `Departamento` ASC, `Cargo` ASC;
END$$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');