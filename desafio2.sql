SELECT * FROM hr.jobs;
SELECT * FROM hr.employees;
SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    CASE
    WHEN jobs.MAX_SALARY >= 5000 AND jobs.MAX_SALARY <= 10000 THEN 'Baixo'
    WHEN jobs.MAX_SALARY >= 10001 AND jobs.MAX_SALARY <= 20000 THEN 'Médio'
    WHEN jobs.MAX_SALARY >= 2001 AND jobs.MAX_SALARY <= 30000 THEN 'Alto'
    WHEN jobs.MAX_SALARY > 3000 THEN 'Altíssimo'
    ELSE 'indefinido'
    END AS 'Nível'
FROM
    hr.employees AS empl
        INNER JOIN
    hr.jobs AS jobs
GROUP BY jobs.JOB_TITLE
ORDER BY jobs.JOB_TITLE;