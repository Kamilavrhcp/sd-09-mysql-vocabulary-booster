SELECT UCASE(CONCAT(emp.first_name, ' ', emp.last_name)) AS 'Nome completo',
    START_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM hr.employees AS emp
  	INNER JOIN hr.job_history AS hj ON hj.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(hj.START_DATE) IN(1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
