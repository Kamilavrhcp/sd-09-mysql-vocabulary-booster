SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
    J.JOB_TITLE AS `Cargo`,
    JH.START_DATE AS `Data de início do cargo`,
    D.DEPARTMENT_NAME AS Departamento
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS J ON J.JOB_ID = JH.JOB_ID
        INNER JOIN
    hr.departments AS D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
WHERE
    E.EMPLOYEE_ID IN (SELECT 
            EMPLOYEE_ID
        FROM
            hr.job_history)
ORDER BY `Nome completo` DESC , `Cargo` ASC;
