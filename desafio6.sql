SELECT 
    CONCAT(emp.first_name, ' ', emp.last_name) AS 'Nome completo',
    jbs.JOB_TITLE AS Cargo,
    his.START_DATE AS 'Data de início do cargo',
    dep.DEPARTMENT_NAME AS Departamento
FROM
    hr.job_history AS his
        INNER JOIN
    hr.employees AS emp ON his.employee_id = emp.employee_id
        INNER JOIN
    hr.jobs AS jbs ON his.JOB_ID = jbs.JOB_ID
        INNER JOIN
    hr.departments AS dep ON his.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY 1 DESC , 2 ASC;
