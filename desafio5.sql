SELECT j.job_title AS 'Cargo',
(j.max_salary - j.min_salary) AS `Variação Salarial`,
REPLACE(FORMAT(j.min_salary / 12, 2), ',', '') AS `Média mínima mensal`,
REPLACE(FORMAT(j.max_salary / 12, 2), ',', '') AS `Média máxima mensal`
FROM hr.jobs AS J
GROUP BY j.job_title
ORDER BY (j.max_salary - j.min_salary) ASC, j.job_title ASC;
