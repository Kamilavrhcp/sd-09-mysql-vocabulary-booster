SELECT j.job_title AS 'Cargo',
CASE
WHEN j.max_salary BETWEEN 5000 AND 10000 THEN 'Baixo'
WHEN j.max_salary BETWEEN 10001 AND 20000 THEN 'Médio'
WHEN j.max_salary BETWEEN 20001 AND 30000 THEN 'Alto'
WHEN j.max_salary > 30000 THEN 'Altíssimo'
END AS 'Nível'
FROM hr.jobs AS j
ORDER BY j.job_title ASC;
