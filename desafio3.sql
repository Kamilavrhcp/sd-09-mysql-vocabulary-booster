SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    (jobs.MAX_SALARY - jobs.MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs AS jobs
GROUP BY `Cargo`, `Diferença entre salários máximo e mínimo`
ORDER BY `Diferença entre salários máximo e mínimo` , `Cargo`;