SELECT 
    JOBS.JOB_TITLE AS 'Cargo',
    ROUND(AVG(employees.SALARY),2) AS 'Média salarial',
    CASE
        WHEN
            AVG(employees.SALARY) >= 2000
                AND AVG(employees.SALARY) <= 5800
        THEN
            'Júnior'
        WHEN
            AVG(employees.SALARY) >= 5801
                AND AVG(employees.SALARY) <= 7500
        THEN
            'Pleno'
        WHEN
            AVG(employees.SALARY) >= 7501
                AND AVG(employees.SALARY) <= 10500
        THEN
            'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS JOBS
        INNER JOIN
    hr.employees ON JOBS.JOB_ID = employees.JOB_ID
GROUP BY JOBS.JOB_TITLE
ORDER BY AVG(employees.SALARY), JOBS.JOB_TITLE;
