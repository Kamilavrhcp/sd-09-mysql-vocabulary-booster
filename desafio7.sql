SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    START_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS jh ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(START_DATE) = 01
        OR MONTH(START_DATE) = 02
        OR MONTH(START_DATE) = 03
ORDER BY `Nome completo` , START_DATE;
