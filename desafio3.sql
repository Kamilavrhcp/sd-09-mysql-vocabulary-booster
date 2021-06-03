SELECT 
    JOB_ID AS Cargo,
    (MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs
ORDER BY JOB_TITLE;
