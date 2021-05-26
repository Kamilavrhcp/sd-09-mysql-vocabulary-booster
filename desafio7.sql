SELECT 
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
    h.start_date AS 'Data de início',
    e.salary AS 'Salário'
FROM
    hr.job_history h
        INNER JOIN
    hr.employees e ON h.employee_id = e.employee_id
WHERE
    MONTH(h.start_date) BETWEEN 01 AND 03
ORDER BY 1 , 2;
