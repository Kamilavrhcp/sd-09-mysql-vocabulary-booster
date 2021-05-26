SELECT
    CONCAT(hEmp.first_name, ' ', hEmp.last_name) AS Nome completo funcionário 1,
    hEmp.SALARY AS Salário funcionário 1,
    hEmp.PHONE_NUMBER AS Telefone funcionário 1,
    CONCAT(hEmp2.first_name, ' ', hEmp2.last_name) AS Nome completo funcionário 2,
    hEmp2.SALARY AS Salário funcionário 2,
    hEmp2.PHONE_NUMBER AS Telefone funcionário 2
FROM
    hr.employees AS hEmp,
    hr.employees AS hEmp2
WHERE
    hEmp.JOB_ID = hEmp2.JOB_ID
        AND hEmp.EMPLOYEE_ID <> hEmp2.EMPLOYEE_ID
ORDER BY Nome completo funcionário 1 , Nome completo funcionário 2;