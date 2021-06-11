SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    JOB_TITLE AS 'Cargo',
    START_DATE AS 'Data de início do cargo',
    DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS jh ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS jb ON jb.JOB_ID = jh.JOB_ID
        INNER JOIN
    hr.departments AS dep ON dep.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo;
