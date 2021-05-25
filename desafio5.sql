SELECT JOB_TITLE as 'Cargo',  ROUND((MAX_SALARY - MIN_SALARY),2) as 'Variação Salarial', ROUND((MIN_SALARY / 12),2) as 'Média mínima mensal', ROUND((MAX_SALARY / 12),2) as 'Média máxima mensal' FROM hr.jobs
ORDER BY `Variação Salarial`, `Cargo` ASC;
