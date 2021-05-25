SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    START_DATE AS 'Data de início',
    SALARY AS Salário
FROM
    hr.employees e
        INNER JOIN
    hr.job_history j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE
    MONTH(START_DATE) = 01
        OR MONTH(START_DATE) = 02
        OR MONTH(START_DATE) = 03
ORDER BY 1 ASC , 2 ASC;
