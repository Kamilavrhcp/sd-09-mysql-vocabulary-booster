SELECT
    UPPER(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome completo`,
    START_DATE AS `Data de início`,
    SALARY AS `Salário`
FROM hr.job_history
JOIN hr.employees ON hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
WHERE MONTH(START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
