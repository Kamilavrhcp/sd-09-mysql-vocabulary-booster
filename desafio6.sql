SELECT 
    CONCAT(employees.first_name, ' ', employees.last_name) AS 'Nome completo', 
    jobs.job_title AS 'Cargo',
    history.start_date AS 'Data de início do cargo',
    department.department_name AS 'Departamento'
FROM
	hr.job_history AS history
INNER JOIN hr.employees AS employees ON history.employee_id = employees.employee_id
INNER JOIN hr.jobs AS jobs ON history.job_id = jobs.job_id
INNER JOIN hr.departments AS department ON history.department_id = department.department_id
ORDER BY `Nome completo` DESC,  Cargo ASC;