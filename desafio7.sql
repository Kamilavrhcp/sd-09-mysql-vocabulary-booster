SELECT 
    UCASE(CONCAT(t1.first_name, ' ', t1.last_name)) AS 'Nome completo',
    t2.start_date AS 'Data de início',
    t1.salary AS Salário
FROM hr.employees AS t1
INNER JOIN hr.job_history AS t2 ON t1.employee_id = t2.employee_id
WHERE MONTH(start_date) IN (1 , 2, 3)
ORDER BY 1 ASC , 2 ASC;
