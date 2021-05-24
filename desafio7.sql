SELECT
UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
jh.start_date AS `Data de início`,
e.SALARY AS `Salário`
FROM 
hr.employees AS e, hr.job_history AS jh
WHERE
e.employee_id = jh.employee_id
AND
MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY
CONCAT(e.first_name, ' ', e.last_name) ASC, jh.START_DATE ASC;