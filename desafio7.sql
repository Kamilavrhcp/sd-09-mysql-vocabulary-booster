/* Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos
 nos meses de janeiro, fevereiro ou março */
 
 SELECT 
    UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome completo`,
    jh.START_DATE AS `Data de início`,
    emp.SALARY AS `Salário`
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS emp ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo` ASC , `Data de início` ASC;
