SELECT CONCAT(UCASE(e.FIRST_NAME), ' ', UCASE(e.LAST_NAME)) AS 'Nome Completo',
h.START_DATE AS 'Data de início',
e.SALARY AS 'Salário'
FROM
hr.employees AS e
INNER JOIN
hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE 
MONTH(START_DATE) IN (01,02,03)
ORDER BY 'Nome Completo', 'Data de início';