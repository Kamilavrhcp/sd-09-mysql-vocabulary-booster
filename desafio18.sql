SELECT CONCAT(First_Name, ' ', Last_Name) AS 'Nome completo',
CONCAT(DATE_FORMAT(`start_date`,'%d'), '/', DATE_FORMAT(`start_date`,'%m'), '/', YEAR(start_date)) AS 'Data de início',
CONCAT(DATE_FORMAT(`end_date`,'%d'), '/', DATE_FORMAT(`end_date`,'%m'), '/', YEAR(end_date)) AS 'Data de rescisão',
ROUND(DATEDIFF(jh.end_date, jh.start_date)/365,2) AS 'Anos trabalhados'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.employee_id = e.employee_id
ORDER BY CONCAT(First_Name, ' ', Last_Name), ROUND(DATEDIFF(jh.end_date, jh.start_date)/365,2);
