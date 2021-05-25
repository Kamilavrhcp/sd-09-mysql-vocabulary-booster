SELECT 
    UPPER(CONCAT(employee.FIRST_NAME,
                    ' ',
                    employee.LAST_NAME)) AS 'Nome completo',
    job_history.START_DATE AS 'Data de início',
    employee.SALARY AS 'Salário'
FROM
    hr.job_history AS job_history
        INNER JOIN
    hr.employees AS employee ON employee.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE
    MONTH(job_history.START_DATE) BETWEEN 01 AND 03
ORDER BY 1 ASC , 2 ASC;
