SELECT 
UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS `Nome completo`, 
JB.START_DATE AS `Data de início`, 
E.SALARY AS `Salário` 
FROM hr.employees AS E 
INNER JOIN hr.job_history AS JB ON JB.EMPLOYEE_ID = E.EMPLOYEE_ID 
INNER JOIN hr.jobs AS J ON J.JOB_ID = JB.JOB_ID 
WHERE MONTH(JB.START_DATE) IN (1, 2, 3) 
ORDER BY `Nome completo` ASC, `Data de início` ASC;
