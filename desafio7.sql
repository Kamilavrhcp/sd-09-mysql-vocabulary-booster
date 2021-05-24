SELECT UCASE(CONCAT(EMP.`FIRST_NAME`, ' ', EMP.`LAST_NAME`)) AS `Nome completo`,
JH.`START_DATE` AS `Data de início`, EMP.SALARY AS 'Salário' FROM hr.job_history AS JH
INNER JOIN hr.employees AS EMP ON EMP.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE MONTH(DATE(JH.`START_DATE`)) IN('01', '02', '03')
ORDER BY `Nome completo` ASC, `Data de início` ASC;
