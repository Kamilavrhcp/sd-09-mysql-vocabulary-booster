SELECT UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome completo`,
his.START_DATE AS `Data de início`,
emp.SALARY AS `Salário`
FROM hr.job_history AS his
JOIN hr.employees AS emp
ON his.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(his.START_DATE) IN (1, 2, 3)
ORDER BY 1 ASC, 2 ASC;
