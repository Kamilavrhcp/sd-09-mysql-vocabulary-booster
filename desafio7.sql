SELECT UCASE(CONCAT(empregados.FIRST_NAME, ' ', empregados.LAST_NAME)) AS `Nome completo`,
historico.START_DATE AS `Data de início`,
empregados.SALARY AS `Salário`
FROM hr.job_history AS historico
INNER JOIN hr.employees AS empregados ON empregados.EMPLOYEE_ID = historico.EMPLOYEE_ID
WHERE MONTH(historico.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
