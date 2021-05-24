SELECT j.job_title AS Cargo, (j.max_salary - j.min_salary) AS 'Variação Salarial',
ROUND(j.min_salary / 12, 2) AS 'Média mínima mensal', ROUND(j.max_salary  / 12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS j
GROUP BY j.job_title, j.max_salary, j.min_salary
ORDER BY (j.max_salary - j.min_salary) ASC, j.job_title ASC;
