SELECT UCASE(CONCAT_WS(" ", e.FIRST_NAME, e.LAST_NAME)) AS "Nome completo",
jh.START_DATE AS "Data de início",
e.SALARY AS "Salário"
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE month(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT_WS(" ", e.FIRST_NAME, e.LAST_NAME), jh.START_DATE;
