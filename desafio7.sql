SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) as 'Nome completo', jh.START_DATE as 'Data de início', e.SALARY as 'Salário'
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` ASC, `Data de início` ASC;
