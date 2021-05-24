SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo'
FROM
    hr.employees
INNER JOIN
hr.jobs ON employees.JOB_ID = jobs.JOB_ID
