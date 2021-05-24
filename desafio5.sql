SELECT j.job_title AS 'Cargo',
(MAX(e.salary) - MIN(e.salary)) AS `Variação Salarial`,
REPLACE(FORMAT(MIN(e.salary) / 12, 2), ',', '') AS `Média mínima mensal`,
REPLACE(FORMAT(MAX(e.salary) / 12, 2), ',', '') AS `Média máxima mensal`
FROM hr.jobs AS j, hr.employees AS e
WHERE e.job_id = j.job_id
GROUP BY j.job_title
ORDER BY (MAX(e.salary) - MIN(e.salary)) ASC, j.job_title ASC;