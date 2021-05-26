SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    j.job_title AS 'Cargo',
    h.start_date AS 'Data de início do cargo',
    d.department_name AS 'Departamento'
FROM
    hr.job_history h
        INNER JOIN
    hr.employees e ON h.employee_id = e.employee_id
        INNER JOIN
    hr.jobs j ON h.job_id = j.job_id
        INNER JOIN
    hr.departments d ON h.department_id = d.department_id
ORDER BY 1 DESC , 2;
