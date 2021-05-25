SELECT UPPER(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`, jh.START_DATE as 'Data de início', e.salary as 'Salário' from hr.employees as e
INNER JOIN job_history as jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
