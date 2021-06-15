SELECT UCASE(CONCAT(fl.first_name,' ', fl.last_name)) AS 'Nome completo',
jh.start_date AS 'Data de início',
fl.salary AS 'Salário'
FROM hr.employees AS fl
INNER JOIN hr.job_history AS jh
ON fl.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.start_date) IN(01, 02, 03)
ORDER BY `Nome completo`, `Data de início` ;
