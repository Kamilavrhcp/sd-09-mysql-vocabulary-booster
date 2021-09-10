SELECT 
    JOB_TITLE AS 'Cargo',
    (MAX_SALARY - MIN_SALARY) AS 'Diferença entre salários máximo e mínimo'
FROM
    hr.jobs
ORDER BY 2 , 1;
-- https://riptutorial.com/sql/example/6529/order-by-alias
