SELECT * FROM hr.jobs;
SELECT * FROM hr.employees;
SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    (jobs.MAX_SALARY - jobs.MIN_SALARY)
    AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.employees AS empl
        INNER JOIN
    hr.jobs AS jobs
GROUP BY jobs.JOB_TITLE
ORDER BY (jobs.MAX_SALARY - jobs.MIN_SALARY), jobs.JOB_TITLE;