SELECT 
    CONCAT(UCASE(employees.first_name), ' ', UCASE(employees.last_name)) AS 'Nome completo', 
    history.start_date AS 'Data de início',
    employees.salary AS 'Salário'
FROM
	hr.employees AS employees
INNER JOIN hr.job_history AS history ON employees.employee_id = history.employee_id
WHERE MONTH(start_date) IN(1,2,3)
ORDER BY `Nome completo` ASC,  `Data de início` ASC;