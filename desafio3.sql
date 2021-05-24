SELECT (max_salary - min_salary) AS "Diferença entre salários máximo e mínimo",
job_title AS Cargo
FROM hr.jobs
ORDER BY "Diferença entre salários máximo e mínimo" ASC, job_title ASC;
