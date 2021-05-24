-- 7 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março
SELECT
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
    h.START_DATE AS `Data de início`,
    e.SALARY AS Salário
FROM
    job_history AS h
        INNER JOIN
    employees AS e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE
    MONTH(START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo`, `Data de início`;
