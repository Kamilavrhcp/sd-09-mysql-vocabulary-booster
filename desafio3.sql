SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    (jobs.MAX_SALARY - jobs.MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs
ORDER BY (jobs.MAX_SALARY - jobs.MIN_SALARY) , jobs.JOB_TITLE;
