SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            hr.jobs.JOB_ID = h.JOB_ID) AS Cargo,
    START_DATE AS 'Data de início do cargo',
    (SELECT 
            DEPARTMENT_NAME
        FROM
            hr.departments
        WHERE
            hr.departments.DEPARTMENT_ID = h.DEPARTMENT_ID) AS Departamento
FROM
    hr.employees e
        INNER JOIN
    hr.job_history h ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY 1 DESC , 2 ASC;
