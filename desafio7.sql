SELECT
    UCASE(CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME)) AS `Nome completo`,
    jobs.START_DATE AS 'Data de início',
    employ.SALARY AS 'Salário'
FROM
    hr.job_history AS jobs
        INNER JOIN
    hr.employees AS employ ON employ.EMPLOYEE_ID = jobs.EMPLOYEE_ID
WHERE MONTH(jobs.START_DATE) IN (1,2,3)
ORDER BY `Nome completo`, `Data de início`;
