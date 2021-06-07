SELECT
CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo'
FROM hr.employees AS employees
ORDER BY 'Nome completo';
