SELECT 
   JOB_TITLE AS Cargo,
    CASE
        WHEN
            MAX_SALARY >= 5000
                AND MAX_SALARY <= 10000
        THEN
            MAX_SALARY - MIN_SALARY
        WHEN
            MAX_SALARY > 10001
                AND MAX_SALARY <= 20000
        THEN
             MAX_SALARY - MIN_SALARY
        WHEN
            MAX_SALARY >= 20001
                AND MAX_SALARY <= 30000
        THEN
             MAX_SALARY - MIN_SALARY
        WHEN MAX_SALARY > 30001 THEN  MAX_SALARY - MIN_SALARY
        ELSE MAX_SALARY
    END AS `Diferença entre salários máximo e mínimo`
FROM
    hr.jobs
ORDER BY `Diferença entre salários máximo e mínimo`, JOB_TITLE;

