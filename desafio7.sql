SELECT UPPER(CONCAT(emp.first_name,' ',emp.last_name)) AS 'Nome completo',
his.start_date AS 'Data de início',
emp.salary AS 'Salário'
FROM hr.job_history AS his
INNER JOIN hr.employees AS emp
ON emp.employee_id = his.employee_id
WHERE MONTH(his.start_date) = 01 OR MONTH(his.start_date) = 02 OR MONTH(his.start_date) = 03
ORDER BY CONCAT(emp.first_name,' ',emp.last_name), his.start_date;
