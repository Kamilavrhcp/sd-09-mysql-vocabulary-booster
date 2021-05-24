SELECT CONCAT(emp.first_name,' ',emp.last_name) AS 'Nome completo',
    (
        SELECT job_title
        FROM hr.jobs
        WHERE hr.jobs.job_id = his.job_id
    ) AS 'Cargo',
        (
        SELECT department_name
        FROM hr.departments
        WHERE hr.departments.department_id = his.department_id
    ) AS 'Departamento',
his.start_date AS 'Data de início do cargo'
FROM hr.job_history AS his
INNER JOIN hr.employees AS emp
ON emp.employee_id = his.employee_id
ORDER BY CONCAT(emp.first_name,' ',emp.last_name) DESC, Cargo;