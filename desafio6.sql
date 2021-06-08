SELECT
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
    JOB_TITLE AS `Cargo`,
    HIRE_DATE AS `Data de início do cargo`,
    DEPARTMENT_NAME AS `Departamento`
FROM hr.employees
    JOIN hr.jobs ON  hr.employees.JOB_ID = hr.jobs.JOB_ID
    JOIN hr.departments ON hr.employees.DEPARTMENT_ID = hr.departments.DEPARTMENT_ID
    ORDER BY `Nome completo`, `Cargo`;
