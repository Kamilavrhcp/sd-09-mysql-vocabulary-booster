SELECT 
    UPPER(CONCAT(emply.FIRST_NAME, ' ', emply.LAST_NAME)) AS 'Nome completo',
    hist.START_DATE AS 'Data de início',
    emply.SALARY AS 'Salário'
FROM
    hr.employees AS emply
        INNER JOIN
    hr.job_history AS hist ON hist.EMPLOYEE_ID = emply.EMPLOYEE_ID
        AND MONTH(hist.START_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT(emply.FIRST_NAME, ' ', emply.LAST_NAME), emply.HIRE_DATE ASC
