SELECT j.job_title AS 'Cargo',
(j.max_salary - j.min_salary) AS `Diferença entre salários máximo e mínimo`
FROM hr.jobs AS j
ORDER BY `Diferença entre salários máximo e mínimo` ASC, j.job_title ASC;