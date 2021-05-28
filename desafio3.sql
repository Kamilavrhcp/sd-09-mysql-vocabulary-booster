SELECT
    JOB_TITLE AS 'Cargo',
    CASE
        WHEN MAX_SALARY != MIN_SALARY THEN MAX_SALARY - MIN_SALARY
    END AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, `Cargo`;
