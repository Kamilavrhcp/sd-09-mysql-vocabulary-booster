SELECT
  JOB_TITLE as 'Cargo',
  CASE
    WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
    WHEN MAX_SALARY > 20000 THEN 'Alto'
    WHEN MAX_SALARY > 10000 THEN 'Médio'
    WHEN MAX_SALARY > 4999 THEN 'Baixo'
  END as 'Nível'
FROM
  hr.jobs
ORDER BY JOB_TITLE ASC;
