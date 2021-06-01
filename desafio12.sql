SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo funcionário 1`,
SALARY AS `Salário funcionário 1`,
PHONE_NUMBER AS `Telefone funcionário 1`,
(SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME)
FROM hr.employees
WHERE `Nome completo funcionário 2`.JOB_ID = `Nome completo funcionário 1`.JOB_ID AND 
`Nome completo funcionário 2` <> `Nome completo funcionário 1`) AS `Nome completo funcionário 2`,
`Nome completo funcionário 2`.SALARY AS `Salário funcionário 2`

FROM hr.employees;
