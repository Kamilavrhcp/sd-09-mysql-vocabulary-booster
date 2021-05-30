SELECT JOB_TITLE AS 'Cargo',
(max_salary - min_salary) AS 'Variação Salarial',
ROUND((min_salary / 12), 2) AS 'Média mínima mensal',
ROUND((max_salary / 12), 2) AS 'Média máxima mensal'
FROM hr.jobs ORDER BY (max_salary - min_salary), JOB_TITLE;



