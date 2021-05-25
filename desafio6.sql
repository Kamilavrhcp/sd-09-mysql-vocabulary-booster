SELECT
    CONCAT(employ.FIRST_NAME, ' ', employ.LAST_NAME) AS `Nome completo`,
    job.JOB_TITLE AS 'Cargo',
    jobs.START_DATE AS 'Data de início do cargo',
    dept.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS jobs
        INNER JOIN
    hr.employees AS employ ON employ.EMPLOYEE_ID = jobs.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS job ON job.JOB_ID = jobs.JOB_ID
        JOIN
    hr.departments AS dept ON dept.DEPARTMENT_ID = jobs.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo;
