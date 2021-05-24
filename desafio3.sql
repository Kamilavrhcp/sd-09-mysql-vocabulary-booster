SELECT
    jobs.JOB_TITLE AS Cargo,
    jobs.MAX_SALARY - jobs.MIN_SALARY AS `Diferença entre salários máximo e mínimo`
FROM
    hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, jobs.JOB_TITLE;
