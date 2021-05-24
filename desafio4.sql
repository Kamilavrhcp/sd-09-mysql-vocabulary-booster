SELECT T2.JOB_TITLE AS 'Cargo', ROUND(AVG(T1.SALARY), 2) AS 'Média salarial',
CASE
WHEN AVG(T1.SALARY) >= 2000 AND AVG(T1.SALARY) <= 5800  THEN 'Júnior'
WHEN AVG(T1.SALARY) >= 5801 AND AVG(T1.SALARY) <= 7500 THEN 'Pleno'
WHEN AVG(T1.SALARY) >= 7501 AND AVG(T1.SALARY) <= 10500 THEN 'Sênior'
WHEN AVG(T1.SALARY) > 10500 THEN 'CEO'
ELSE NULL
END AS 'Senioridade'
FROM hr.employees AS T1
INNER JOIN hr.jobs AS T2
ON T1.JOB_ID = T2.JOB_ID
GROUP BY T2.JOB_ID
ORDER BY AVG(T1.SALARY) ASC
