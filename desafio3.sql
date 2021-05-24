USE hr;
SELECT JOB_TITLE as 'Cargo', (MAX_SALARY - MIN_SALARY) as 'Diferença entre salários máximo e mínimo' FROM jobs
ORDER BY CAST('Diferença entre salários máximo e mínimo' as unsigned);
