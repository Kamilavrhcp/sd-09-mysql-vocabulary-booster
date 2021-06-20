SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.START_DATE AS 'Data de início',
j.END_DATE AS 'Data de rescisão',
ROUND(DATEDIFF(j.END_DATE, j.START_DATE)/365, 2) AS 'Anos Trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Anos Trabalhados` ASC;
