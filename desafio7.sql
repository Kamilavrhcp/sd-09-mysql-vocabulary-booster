SELECT 
    CONCAT(UCASE(e.FIRST_NAME), ' ', UCASE(e.LAST_NAME)) AS `Nome completo`,
    jh.START_DATE AS `Data de início`,
    e.SALARY AS Salário
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, jh.START_DATE;
