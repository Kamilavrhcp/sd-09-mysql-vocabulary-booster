SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    j.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
JOIN hr.job_history AS j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
AND MONTH(j.START_DATE) IN (01,02,03)
ORDER BY e.FIRST_NAME, e.LAST_NAME, j.START_DATE
