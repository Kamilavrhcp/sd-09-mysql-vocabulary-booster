
SELECT 
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome Completo',
    jh.start_date AS 'Data de início',
    e.salary AS 'Salário'
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS e ON jh.employee_id = e.employee_id
GROUP BY 2, 1
HAVING MONTH(jh.start_date) IN (01, 02, 03)
ORDER BY 1 , 2;
