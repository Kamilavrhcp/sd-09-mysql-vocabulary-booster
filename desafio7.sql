SELECT
    UPPER(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
	CASE
		WHEN MONTH(jh.START_DATE) IN(1, 2, 3) THEN jh.START_DATE
	END AS `Data de início`,
    e.SALARY AS `Salário`
FROM
    hr.employees AS e
INNER JOIN hr.job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, e.SALARY;