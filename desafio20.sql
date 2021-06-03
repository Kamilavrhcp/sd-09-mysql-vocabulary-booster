DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
    d.department_name AS `Departamento`,
    j.job_title AS `Cargo`
FROM
    hr.job_history AS h
        INNER JOIN
    hr.employees AS e ON h.employee_id = e.employee_id
        INNER JOIN
    hr.jobs AS j ON h.job_id = j.job_id
        INNER JOIN
    hr.departments AS d ON h.department_id = d.department_id
WHERE
    e.email = email
ORDER BY `Departamento` ASC , `Cargo` ASC;
END $$

DELIMITER ;
