SELECT 
(
SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME))
FROM hr.employees as emp
WHERE emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
) AS 'Nome completo',
hist.START_DATE AS 'Data de início',
(
SELECT emp.SALARY
FROM hr.employees as emp
WHERE emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
) AS 'Salário'
FROM hr.job_history AS hist
WHERE MONTH(hist.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, hist.START_DATE ASC;
