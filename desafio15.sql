SELECT  jobs.JOB_TITLE AS 'Cargo',
CASE  WHEN jobs.MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
      WHEN jobs.MAX_SALARY <= 20000 THEN 'Médio'
      WHEN jobs.MAX_SALARY <= 30000 THEN 'Alto'
      ELSE 'Altíssimo'
END AS 'Nível'
FROM hr.jobs
ORDER BY jobs.JOB_TITLE;
