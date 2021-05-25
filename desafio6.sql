SELECT 
	CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    J.JOB_TITLE AS `Cargo`,
    JH.START_DATE AS `Data de início de cargo`,
    D.DEPARTMENT_NAME AS `Departamento`
    FROM hr.employees as E
    INNER JOIN hr.jobs AS J ON E.JOB_ID = J.JOB_ID
    INNER JOIN hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
    INNER JOIN hr.departments AS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
    WHERE E.EMPLOYEE_ID IN (SELECT EMPLOYEE_ID FROM hr.job_history) ORDER BY `Nome completo` DESC, `Cargo` ASC;
